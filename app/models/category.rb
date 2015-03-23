class Category < ActiveRecord::Base
  has_many :items, through: :items_categories
end