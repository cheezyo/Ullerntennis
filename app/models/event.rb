class Event < ActiveRecord::Base
  attr_accessible :title, :dateofevent, :content, :endofevent
end
