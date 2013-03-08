class Unit < ActiveRecord::Base
  attr_accessible :title

  has_many :workrequests
  has_many :supports
end
