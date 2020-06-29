class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def sign_up
    @user = params[:user]
    mail(
      to: @user.email,
      subject: "Thanks for signing up for the Quick Favor Club!"
      )
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

  def welcome
    @admin_emails = []
    User.all.each do |user|
      if user.admin == true
        @admin_emails << user.email
      end
    end
    @user = params[:user]

    mail(
      to: @user.email,
      bcc: @admin_emails,
      subject: "Welcome to the Quick Favor Club!"
      )
  end
end
