require 'test_helper'

class ReferrerMailerTest < ActionMailer::TestCase
  test "invite" do
    mail = ReferrerMailer.invite
    assert_equal "Invite", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
