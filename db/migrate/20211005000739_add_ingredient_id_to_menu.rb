class AddIngredientIdToMenu < ActiveRecord::Migration[5.2]
  def change
    add_reference :menus, :id_ingredient, foreign_key: true
  end
end
