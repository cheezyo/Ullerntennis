class CreateSideboxes < ActiveRecord::Migration
  def self.up
    create_table :sideboxes do |t|
      t.string :title
      t.text :content
      t.timestamps
    end
  end

  def self.down
    drop_table :sideboxes
  end
end
