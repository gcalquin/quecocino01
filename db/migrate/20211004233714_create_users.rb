class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name_user
      t.string :avatar_user
      t.string :name_pantry_user
      t.string :address_user
      t.string :country_user
      t.integer :phone_user

      t.timestamps
    end
  end
end
