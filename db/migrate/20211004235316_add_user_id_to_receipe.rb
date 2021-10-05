class AddUserIdToReceipe < ActiveRecord::Migration[5.2]
  def change
    add_reference :recipes, :id_user, foreign_key: true
  end
end
