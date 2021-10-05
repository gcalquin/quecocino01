class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.integer :id_recipe
      t.integer :id_user
      t.integer :id_category
      t.string :name_recipe
      t.integer :calories_recipe
      t.integer :time_recipe
      t.string :preparation_recipe

      t.timestamps
    end
  end
end
