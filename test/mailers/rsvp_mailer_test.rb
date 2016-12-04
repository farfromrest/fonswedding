require 'test_helper'

class RsvpMailerTest < ActionMailer::TestCase
  test "guest_rsvp" do
    guest = Guest.all.first
    mail = RsvpMailer.guest_rsvp(guest)
    assert_equal ["noreply@fonswedding.com"], mail.from
  end

end
