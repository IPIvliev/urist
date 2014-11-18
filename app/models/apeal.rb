class Apeal < ActiveRecord::Base
  attr_accessible :finish, :house, :how, :korpus, :phone, :street,
  :term, :text, :who, :user_id, :result

  belongs_to :user
end
