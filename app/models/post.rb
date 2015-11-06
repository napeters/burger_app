class Post < ActiveRecord::Base
  belongs_to :user

  validates :image_url, :caption, :rating, :restaurant, :location, presence: true
end
