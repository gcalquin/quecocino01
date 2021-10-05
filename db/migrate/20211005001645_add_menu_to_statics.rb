class AddMenuToStatics < ActiveRecord::Migration[5.2]
  def change
    add_reference :statics, :id_menu, foreign_key: true
  end
end
