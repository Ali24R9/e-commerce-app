class Item < ActiveRecord::Base
  has_many :purchases
  has_many :users, through: :purchases
  has_many :categories, through: :items_categories
  require 'csv'

  def self.import(file)
    CSV.parse(File.read(file)) do |row|
      item_hash = row.to_hash

      item = Item.where(id: item_hash["item_id"])

      if item.count == 1
        item.first.update_attributes(item_hash)
      else 
        Item.create!(item_hash)
      end
    end
  end
end