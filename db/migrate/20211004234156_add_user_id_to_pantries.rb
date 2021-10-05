class AddUserIdToPantries < ActiveRecord::Migration[5.2]
  def change
    add_reference :pantries, :user, foreign_key: true
  end
end
