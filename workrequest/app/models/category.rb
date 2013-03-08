class Category < ActiveRecord::Base
  attr_accessible :title
  default_scope order('title asc')
  
  has_many :workrequests
  has_many :supports
end
