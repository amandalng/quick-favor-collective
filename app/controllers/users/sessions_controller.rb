# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  def index
    @unhide_referralnavbar = true
    @users = User.all.sort_by &:first_name
    @referrals = Referral.all

    @user_names = []
    User.all.each do |user|
      if user.status == "verified"
        @user_names << user.full_name
      end
    end

    @industries = []
    User.all.each do |user|
      if @industries.include?(user.industry) == false
        if user.status == "verified"
          @industries << user.industry
        end
      end
    end

    @cities = []
    User.all.each do |user|
      if @cities.include?(user.city) == false
        if user.status == "verified"
          @cities << user.city
        end
      end
    end
  end

  def show
    @user = User.find(params[:id])
  end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
