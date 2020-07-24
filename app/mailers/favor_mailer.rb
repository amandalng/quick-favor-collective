class FavorMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.favor_mailer.send_favor.subject
  #
  def send_favor
    @favor = params[:favor]
    @user_emails = []
    User.all.each do |user|
      if user.status == "verified"
        if (@favor.location.include?("All") && @favor.industry.include?("All")) || (@favor.location == "" && @favor.industry == "") || (@favor.location == "" && @favor.industry.include?("All")) || (@favor.industry == "" && @favor.location.include?("All"))
          @user_emails << user.email
        elsif @favor.location.include?(user.country)
          @user_emails << user.email
        else
          if @favor.industry.include?(user.industry)
            @user_emails << user.email
          end
        end
      end
    end

    raise

    mail(
      bcc: @user_emails,
      subject: "QFC: New Favor Request from #{@favor.user.first_name}!"
      )
  end
end
