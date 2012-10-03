class Subpage < ActiveRecord::Base
  attr_accessible :title, :content, :submenubutton_id
  belongs_to :submenupage
end
