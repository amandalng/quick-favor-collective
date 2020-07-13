class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true
  # validates :birthdate, presence: true
  validates :city, presence: true
  validates :country, presence: true
  validates :industry, presence: true
  validates :oneliner, presence: true
  validates :funfact, presence: true
  validates :referrer, presence: true
  validates :status, presence: true, inclusion: { in: ["unverified", "verified", "rejected"] }

  has_many :favors
  has_many :referrals
  has_many :responses
  has_one_attached :photo


  after_create :send_welcome_email, :send_new_applicant_notification

  def full_name
    "#{first_name} #{last_name}"
  end


  private

  def send_welcome_email
    UserMailer.with(user: self).sign_up.deliver_now
  end

  def send_new_applicant_notification
    UserMailer.with(user: self).new_applicant.deliver_now
  end
end


[ "Accounting & Tax", "Aerospace", "Agriculture & Food", "Architecture", "Art & Design", "Consumer Products", "Cybersecurity", "E-commerce", "Education", "Electronics", "Energy & Sustainability", "Financial Services", "Government & Public Sector", "Healthcare", "Internet & Telco", "Logistics", "Management Consulting", "Manufacturing", "Nonprofit", "Real estate", "Supply Chain", "Technology", "Travel & Hospitality", "Venture Capital & Private Equity", "Other" ]
