class Request < ApplicationRecord
  belongs_to :user
  belongs_to :requesting_user, :class_name => "User"

  validates :intro, presence: true
  validates :purpose, presence: true
  validates :requesting_user, presence: true
  validates :user, presence: true
end
