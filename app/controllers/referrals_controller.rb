class ReferralsController < ApplicationController
  def new
    @referral = Referral.new
  end

  def create
    @referral = Referral.new(referral_params)
    @referral.user = current_user

    if @referral.save
      ReferralMailer.with(referral: @referral).invite.deliver_now
      ReferralMailer.with(referral: @referral).new_referral.deliver_now
      redirect_to referral_path(@referral)
    else
      render 'new'
    end
  end

  def index
    @referrals = Referral.all.sort_by(&:created_at).reverse
  end

  def show
    @referral = Referral.find(params[:id])
  end

  private

  def referral_params
    params.require(:referral).permit(:first_name, :last_name, :email)
  end
end
