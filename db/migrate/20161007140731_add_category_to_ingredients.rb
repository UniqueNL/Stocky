class AddCategoryToIngredients < ActiveRecord::Migration[5.0]
  def change
    add_reference :ingredients, :category, foreign_key: true
  end
end
