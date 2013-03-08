class Status < ActiveRecord::Base
  attr_accessible :title
  default_scope order('title asc')
end
