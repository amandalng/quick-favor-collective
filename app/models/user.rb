class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :city, presence: true
  validates :industry, presence: true
  validates :oneliner, presence: true
  validates :funfact, presence: true
  validates :referrer, presence: true

  has_many :favors
  has_many :referrals
  has_one_attached :photo

  # after_create :send_welcome_email, :send_new_applicant_notification

  def full_name
    "#{first_name} #{last_name}"
  end


  private

  # def send_welcome_email
  #   UserMailer.with(user: self).welcome.deliver_now
  # end

  # def send_new_applicant_notification
  #   UserMailer.with(user: self).new_applicant.deliver_now
  # end
end
