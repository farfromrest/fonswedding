class RsvpMailer < ApplicationMailer
  default from: Rails.configuration.from_email

  def guest_rsvp(guest)
    @guest = guest
    mail to: Rails.configuration.notify_email, subject: 'You got an RSVP for your wedding!'
  end
end
