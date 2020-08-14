class RequestMailer < ApplicationMailer
  def request_coffee_chat
    @request = params[:request]

    mail(
      to: @request.user.email,
      subject: "Quick Favor Club: #{@request.requesting_user.first_name} would like to grab a coffee!"
      )
  end
end
