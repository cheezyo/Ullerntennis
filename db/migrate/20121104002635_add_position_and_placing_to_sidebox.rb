class AddPositionAndPlacingToSidebox < ActiveRecord::Migration
  def change
    add_column :sideboxes, :position, :string
    add_column :sideboxes, :placing, :integer
  end
end
