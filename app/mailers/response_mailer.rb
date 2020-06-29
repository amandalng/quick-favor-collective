class ResponseMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.response_mailer.respond.subject
  #
  def respond
    @response = params[:response]

    mail(
      to: @response.favor.user.email,
      cc: @response.user.email,
      subject: "Quick Favor Club: Favor Response"
      )
  end
end
