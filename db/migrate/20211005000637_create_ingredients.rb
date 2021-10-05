class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.integer :id_ingredient
      t.string :name_ingredient
      t.string :measure_ingredient

      t.timestamps
    end
  end
end
