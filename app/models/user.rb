class User < ActiveRecord::Base
  has_many :posts
  has_secure_password

  validates :f_name, :l_name, :username, :email_address, :password, :password_confirmation, :profile_pic_url, :bio, presence: true, on: :create
  validates :f_name, :l_name, :username, :email_address, :profile_pic_url, :bio, presence: true, on: :update

end
