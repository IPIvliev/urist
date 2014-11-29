class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :name, :role, :secondname, :surname, :phone

  mount_uploader :avatar, AvatarUploader
  attr_accessible :avatar, :avatar_cache, :remove_avatar

  has_many :apeals
end
