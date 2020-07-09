class InquiryMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.inquiry_mailer.new_inquiry.subject
  #

  def new_inquiry
    @admin_emails = []
    User.all.each do |user|
      if user.admin == true
        @admin_emails << user.email
      end
    end
    @inquiry = params[:inquiry]

    mail(
      to: @admin_emails,
      subject: "QFC: New Inquiry"
      )
  end
end
