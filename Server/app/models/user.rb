class User < ActiveRecord::Base
     mount_uploader :avatar, AvatarUploader
	has_many :treks
	has_many :enrollments
    has_many :enrolled_treks, :through => :enrollments, :source => :trek
  has_many :checkins
    has_many :checked_restaurants, :through => :checkins, :source => :restaurant

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def enrolled_in?(trek)
    return enrolled_treks.include?(trek)
  end

  #check in
  def checked_in?(restaurant)
    return checked_restaurants.include?(restaurant)
  end

end
