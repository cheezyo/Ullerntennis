class AddSubmenubuttonIdToSubpage < ActiveRecord::Migration
  def change
    add_column :subpages, :submenubutton_id, :integer
  end
end
