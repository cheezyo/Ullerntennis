class Contactinfo < ActiveRecord::Base
  attr_accessible :contactperson, :telf, :email, :street, :postalcode, :content
end
