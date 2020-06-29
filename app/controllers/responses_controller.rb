class ResponsesController < ApplicationController
  def new
    @response = Response.new
    @favor = Favor.find_by(params[:id])
  end

  def create
    @response = Response.new(response_params)
    @favor = Favor.find_by(params[:id])

    @response.favor = @favor
    @response.user = current_user

    if @response.save
      ResponseMailer.with(response: @response).respond.deliver_now
      redirect_to favors_path
    else
      render 'new'
    end
  end

  private

  def response_params
    params.require(:response).permit(:message)
  end
end
