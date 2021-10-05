class CreatePantries < ActiveRecord::Migration[5.2]
  def change
    create_table :pantries do |t|
      t.string :ingredient_pauntry
      t.string :quantity_pauntry

      t.timestamps
    end
  end
end
