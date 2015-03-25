class EditItemsCategories < ActiveRecord::Migration
  def change
    rename_table :items_categories, :relations
  end
end
