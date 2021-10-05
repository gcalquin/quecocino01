class AddCategoryToRecipe < ActiveRecord::Migration[5.2]
  def change
    add_reference :recipes, :id_category, foreign_key: true
  end
end
