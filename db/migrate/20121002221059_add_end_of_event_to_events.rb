class AddEndOfEventToEvents < ActiveRecord::Migration
  def change
    add_column :events, :endofevent, :date
  end
end
