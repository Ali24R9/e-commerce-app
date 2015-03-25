class Item < ActiveRecord::Base
  # belongs_to :itemable, polymorphic: true
  has_many :purchases
  has_many :users, through: :purchases
  has_many :categories, through: :relations
  has_many :relations

end