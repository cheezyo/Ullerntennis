class CreateSubmenubuttons < ActiveRecord::Migration
  def self.up
    create_table :submenubuttons do |t|
      t.string :title
      t.text :content
      t.timestamps
    end
  end

  def self.down
    drop_table :submenubuttons
  end
end
