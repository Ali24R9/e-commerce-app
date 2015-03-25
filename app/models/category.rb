class Category < ActiveRecord::Base
  has_many :items, through: :relations
  has_many :relations
end