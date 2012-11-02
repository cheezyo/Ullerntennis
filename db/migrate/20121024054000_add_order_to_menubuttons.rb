class AddOrderToMenubuttons < ActiveRecord::Migration
  def change
    add_column :menubuttons, :order, :integer
  end
end
