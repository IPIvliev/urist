class Article < ActiveRecord::Base
  attr_accessible :name, :text, :user_id

  mount_uploader :image, ImageUploader
  attr_accessible :image, :image_cache, :remove_image
end
