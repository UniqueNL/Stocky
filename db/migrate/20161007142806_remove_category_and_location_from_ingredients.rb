class RemoveCategoryAndLocationFromIngredients < ActiveRecord::Migration[5.0]
  def change
    remove_column :ingredients, :category, :integer
    remove_column :ingredients, :location, :integer
  end
end
