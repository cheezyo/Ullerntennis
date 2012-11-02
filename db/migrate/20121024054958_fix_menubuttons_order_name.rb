class FixMenubuttonsOrderName < ActiveRecord::Migration
  def up
      
    rename_column :menubuttons, :order, :inorder
  
  end

  def down
  end
end
