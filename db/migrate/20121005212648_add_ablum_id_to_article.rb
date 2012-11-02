class AddAblumIdToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :album_id, :integer
  end
end
