class Item < ActiveRecord::Base
  has_many :purchases
  has_many :users, through: :purchases
  has_many :categories, through: :relations
  has_many :relations

end