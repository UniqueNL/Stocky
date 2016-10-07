class AddLocationToIngredients < ActiveRecord::Migration[5.0]
  def change
    add_reference :ingredients, :location, foreign_key: true
  end
end
