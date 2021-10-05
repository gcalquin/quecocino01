class CreateStatics < ActiveRecord::Migration[5.2]
  def change
    create_table :statics do |t|
      t.integer :id_statics
      t.integer :id_menu
      t.integer :count_menu
      t.integer :score_menu

      t.timestamps
    end
  end
end
