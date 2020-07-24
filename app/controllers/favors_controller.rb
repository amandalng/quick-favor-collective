class FavorsController < ApplicationController
  def new
    @favor = Favor.new

    @countries = [ "All" ]
    User.all.each do |user|
      if @countries.include?(user.country) == false
        if user.status == "verified"
          @countries << user.country
        end
      end
    end

    @industries = [ "All" ]
    User.all.each do |user|
      if @industries.include?(user.industry) == false
        if user.status == "verified"
          @industries << user.industry
        end
      end
    end
  end

  def create
    @favor = Favor.new(favor_params)
    @favor.user = current_user

    @favor.location = params["favor"]["location"].join(" ")
    @favor.industry = params["favor"]["industry"].join(" ")

    if @favor.save
      FavorMailer.with(favor: @favor).send_favor.deliver_now
      redirect_to confirmation_favor_path(@favor)
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

  def favors
    @favors = Favor.where(user: User.find(params[:user_id])).sort_by(&:created_at).reverse
    @user = User.find(params[:user_id])
  end

  def confirmation
    @favor = Favor.find(params[:id])
  end

  def show
    @favor = Favor.find(params[:id])
  end

  private

  def favor_params
    params.require(:favor).permit(:favor, :details, :significance, :link, :introduction, :location, :industry)
  end
end
