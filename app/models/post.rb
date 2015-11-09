class Post < ActiveRecord::Base
  belongs_to :user
  has_many :bites

  validates :image_url, :caption, :rating, :restaurant, :location, presence: true
end
