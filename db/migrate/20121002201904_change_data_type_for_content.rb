class ChangeDataTypeForContent < ActiveRecord::Migration
  def up
     change_table :articles do |t|
      t.change :content, :text
    end
  end

  def down
  end
end
