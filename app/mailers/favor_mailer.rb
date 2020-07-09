class FavorMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.favor_mailer.send_favor.subject
  #
  def send_favor
    @user_emails = []
    User.all.each do |user|
      if user.status == "verified"
        @user_emails << user.email
      end
    end
    @favor = params[:favor]

    mail(
      bcc: @user_emails,
      subject: "QFC: New Favor Request from #{@favor.user.first_name}!"
      )
  end
end
