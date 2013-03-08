class Profile < ActiveRecord::Base
  attr_accessible :email, :firstname, :lastname
  default_scope order('firstname asc')

end
