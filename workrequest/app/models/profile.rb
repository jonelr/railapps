class Profile < ActiveRecord::Base
  attr_accessible :email, :firstname, :lastname, :company_id
  default_scope order('firstname asc')

  has_many :workrequests
  has_many :supports
  belongs_to :company

  scope :by_email, lambda {|email| where('email=?',email)}

  validates :email, :uniqueness => true
end
