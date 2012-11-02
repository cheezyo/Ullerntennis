class Article < ActiveRecord::Base
  attr_accessible :title, :author, :ingress, :picture, :content, :album_id
  has_one :album

end
