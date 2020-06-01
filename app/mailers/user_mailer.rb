class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome
    @user = params[:user]
    mail(to: @user.email, subject: "Welcome to the Quick Favor Club!")
  end

  def new_applicant
    @admin_emails = []
    User.all.each do |user|
      if user.admin == true
        @admin_emails << user.email
      end
    end
    @user = params[:user]

    mail(
      to: @admin_emails,
      subject: "Quick Favor Club: New Member to Verify"
      )
  end
end
