class Picture < ActiveRecord::Base
  attr_accessible :description, :title, :album_id
  belongs_to :album
end
