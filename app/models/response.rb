class Response < ApplicationRecord
  belongs_to :user
  belongs_to :favor

  validates :message, presence: true
end
