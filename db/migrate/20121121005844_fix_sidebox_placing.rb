class FixSideboxPlacing < ActiveRecord::Migration
  def up
    rename_column :sideboxes, :placing, :inorder
  end

  def down
  end
end
