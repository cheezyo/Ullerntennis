class Submenubutton < ActiveRecord::Base
  attr_accessible :title, :content, :menubutton_id, :subpages_attributes
  belongs_to :menubutton
  has_many :subpages
  accepts_nested_attributes_for :subpages, allow_destroy: true
end
