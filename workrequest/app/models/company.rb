class Company < ActiveRecord::Base
  attr_accessible :name
  default_scope order('name asc')

  has_many :profiles
  has_many :workrequests
  has_many :supports
end
