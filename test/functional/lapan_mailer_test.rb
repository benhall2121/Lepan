require 'test_helper'

class LapanMailerTest < ActionMailer::TestCase
  test "contact_email" do
    mail = LapanMailer.contact_email
    assert_equal "Contact email", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
