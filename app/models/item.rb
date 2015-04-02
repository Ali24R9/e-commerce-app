class Item < ActiveRecord::Base
  has_many :purchases
  has_many :users, through: :purchases
  has_many :categories, through: :relations
  has_many :relations


  #I was using this here to test importing csv on items, but was planning to move it to an "import.rb" file later on to import data for all the classes at once. 
  def self.import

    File.open("#{Rails.root}/db/csv/mini_proj-items 2.csv", "r") do |file|
      file.each_line do |line| 
        #some code for adding commas to each line between the spaces
      end
    end

    items = CSV.read("#{Rails.root}/db/csv/mini_proj-items 2.csv")


    CSV.foreach("#{Rails.root}/db/csv/mini_proj-items 2.csv", headers: true) do |row|

      Item.create! row.to_hash
    end
  end 
end