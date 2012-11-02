class Album < ActiveRecord::Base
  attr_accessible :title, :pictures_attributes
  has_many :pictures
  belongs_to :article
  accepts_nested_attributes_for :pictures, allow_destroy: true
end
