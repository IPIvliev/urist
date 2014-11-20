class Page < ActiveRecord::Base
  attr_accessible :category_id, :name, :text

  mount_uploader :asset, FileUploader
  # don't forget those if you use :attr_accessible (delete method and form caching method are provided by Carrierwave and used by RailsAdmin)
  attr_accessible :asset, :file_cache, :remove_file

  belongs_to :category
end
