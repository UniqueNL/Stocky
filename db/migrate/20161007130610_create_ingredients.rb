class CreateIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.integer :category
      t.integer :location
      t.integer :amount
      t.date :expire
      t.string :image

      t.timestamps
    end
  end
end
