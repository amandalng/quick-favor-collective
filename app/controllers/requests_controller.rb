class RequestsController < ApplicationController
  def new
    @request = Request.new
    @requesting_user = current_user
    @requested_user = User.find(:id)
  end

  def create
    @request = Request.new(request_params)
    @requesting_user = current_user
    @requested_user = User.find(params[:user_id])

    @request.requesting_user = @requesting_user
    @request.user = @requested_user

    if @request.save
      RequestMailer.with(request: @request).request_coffee_chat.deliver_now
      redirect_to user_path(@request.user)
    else
      redirect_to user_path(@request.user), notice: "Your request was unsuccessful! Don't forget to fill all fields."
    end
  end

  def show
    @request = Request.find(params[:request_id])
  end

  private

  def request_params
    params.require(:request).permit(:intro, :purpose)
  end
end
