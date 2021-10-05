class CreateMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :menus do |t|
      t.integer :id_menu
      t.integer :id_recipe
      t.string :quantity_menu_integer

      t.timestamps
    end
  end
end
