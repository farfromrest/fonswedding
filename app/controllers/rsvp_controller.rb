class RsvpController < ApplicationController
  def index
  end

  def validate
    first_name = params[:first_name].downcase
    last_name = params[:last_name].downcase
    @guest = Guest.where("lower(first_name) = ? AND lower(last_name) = ?",  first_name, last_name).first

    if @guest
      redirect_to confirm_url(token: @guest.token)
    else
      flash[:error] = "sorry, we couldn't find a reservation under that name"
      redirect_to :rsvp
    end
  end

  def confirm
    @guest = Guest.find_by_token params[:token]

    redirect_to :rsvp unless @guest

    if params[:rsvpd]
      @guest.rsvpd = true
      @guest.save
      if params[:rsvp_for_guest]
        @guest.guest.rsvpd = true
        @guest.guest.save
      end
      redirect_to :success
    end

  end

  def success
    @guest = Guest.find_by_token params[:token]
  end
end
