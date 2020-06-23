class FavorsController < ApplicationController
  def new
    @favor = Favor.new
  end

  def create
    @favor = Favor.new(favor_params)
    @favor.user = current_user


    if @favor.save
      FavorMailer.with(favor: @favor).send_favor.deliver_now
      redirect_to favor_path(@favor)
     else
      render 'new'
    end
  end

  def index
    if current_user.status == "verified"
      @unhide_favornavbar = true
    end

    @favors = Favor.all.sort_by(&:created_at).reverse
  end

  def show
    @favor = Favor.find(params[:id])
  end

  private

  def favor_params
    params.require(:favor).permit(:favor, :details, :significance, :link, :introduction)
  end
end
