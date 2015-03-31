class Item < ActiveRecord::Base
  has_many :purchases
  has_many :users, through: :purchases
  has_many :categories, through: :relations
  has_many :relations

  def self.import(file)
    CSV.foreach("#{Rails.root}/db/csv/mini_proj-items 2.csv", headers: true) do |row|
      Item.create! row.to_hash
    end
  end 
end