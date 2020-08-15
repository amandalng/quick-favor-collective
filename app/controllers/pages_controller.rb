class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about, :join, :contact]

  def home
    @home = true
    @inquiry = Inquiry.new
  end

  def about
    @about = true

    if user_signed_in?
      if current_user.status == "verified"
        @unhide_favornavbar = true
      end
    else
      @unhide_joinnavbar = true
    end
  end

  def join
  end

  def admin
  end

  def membership
    @users = User.all

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

    @countries = []
    User.all.each do |user|
      if @countries.include?(user.country) == false
        if user.status == "verified"
          @countries << user.country
        end
      end
    end
  end

  def rejects
    @users = User.all

    @user_names = []
    User.all.each do |user|
      if user.status == "verified"
        @user_names << user.full_name
      end
    end

    @industries = []
    User.all.each do |user|
      if @industries.include?(user.industry) == false
        if user.status == "rejected"
          @industries << user.industry
        end
      end
    end

    @cities = []
    User.all.each do |user|
      if @cities.include?(user.city) == false
        if user.status == "rejected"
          @cities << user.city
        end
      end
    end

    @countries = []
    User.all.each do |user|
      if @countries.include?(user.country) == false
        if user.status == "rejected"
          @countries << user.country
        end
      end
    end
  end

  def contact
    @inquiry = Inquiry.new
  end
end
