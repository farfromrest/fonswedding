class GiftController < ApplicationController

  def confirm
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    @stripeToken = params[:stripeToken]
    @amount = params[:amount] == 'other' ? params[:otherAmount] : params[:amount]
    @cc_brand = params[:stripeCCBrand]
    @cc_last4 = params[:stripeCCLast4]
  end

  def create
    @amount = (params[:amount].gsub(/[^\d,\.]/, '').to_f * 100).ceil.to_i

    charge = Stripe::Charge.create(
      :amount      => @amount,
      :description => 'Wedding Gift',
      :currency    => 'usd',
      :source  => params[:stripeToken],
      receipt_email: params[:email],
      metadata: {
        name: params[:name],
        email: params[:email],
        message: params[:message]
      }
    )

    render :thank_you

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to gift_path
  end
end
