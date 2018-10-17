class Restaurant < ApplicationRecord
  belongs_to :user, optional: true
  has_many :images
  validates :name, presence: true, length: {minimum: 3}
  validates :summary, presence: true, length: {minimum: 3}
  validates :location, presence: true, length: {minimum: 3}
  validates :opening_hours, presence: true, length: {minimum: 3}


end
