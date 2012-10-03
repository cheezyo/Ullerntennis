class Article < ActiveRecord::Base
  attr_accessible :title, :author, :ingress, :picture, :content
end
