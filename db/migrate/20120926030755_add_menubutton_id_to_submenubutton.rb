class AddMenubuttonIdToSubmenubutton < ActiveRecord::Migration
  def change
    add_column :submenubuttons, :menubutton_id, :integer
  end
end
