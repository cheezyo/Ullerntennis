class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :fname, :lname, :email, :admin, :editor, :password, :password_confirmation

end
