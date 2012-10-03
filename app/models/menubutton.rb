class Menubutton < ActiveRecord::Base
  attr_accessible :title, :submenubuttons_attributes
  has_many :submenubuttons
  accepts_nested_attributes_for :submenubuttons, allow_destroy: true
end
