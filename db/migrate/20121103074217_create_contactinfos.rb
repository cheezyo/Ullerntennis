class CreateContactinfos < ActiveRecord::Migration
  def self.up
    create_table :contactinfos do |t|
      t.string :contactperson
      t.string :telf
      t.string :email
      t.string :street
      t.string :postalcode
      t.text :content
      t.timestamps
    end
  end

  def self.down
    drop_table :contactinfos
  end
end
