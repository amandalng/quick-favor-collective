# Preview all emails at http://localhost:3000/rails/mailers/response_mailer
class ResponseMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/response_mailer/respond
  def respond
    @response = Response.last

    ResponseMailer.with(favor: @response).respond
  end

end
