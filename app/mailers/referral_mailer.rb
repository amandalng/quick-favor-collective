class ReferralMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.referrer_mailer.invite.subject
  #
  def invite
    @referral = params[:referral]

    mail(
      to: @referral.email,
      subject: "Quick Favor Club: You've been invited!"
      )
  end

  def new_referral
    @admin_emails = []
    User.all.each do |user|
      if user.admin == true
        @admin_emails << user.email
      end
    end
    @referral = params[:referral]

    mail(
      to: @admin_emails,
      subject: "Quick Favor Club: New Referral"
      )
  end
end
