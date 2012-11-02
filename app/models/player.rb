class Player < ActiveRecord::Base
  attr_accessible :fname, :lname, :birth, :gender
end
