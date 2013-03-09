class WorkRequest < ActiveRecord::Base
  attr_accessible :area_id, :category_id, :plant_id, :queue, :requestors, :status_id, :title, :created_by, :unit_id, :company_id, :profile_id

  belongs_to :category
  belongs_to :area
  belongs_to :unit
  belongs_to :plant
  belongs_to :status
  belongs_to :company
  belongs_to :profile

  validates :title, :presence => true
  validates :area_id, :presence => true
  validates :unit_id, :presence => true
  validates :category_id, :presence => true
  validates :plant_id, :presence => true
  validates :status_id, :presence => true
  validates :requestors, :presence => true

  scope :by_company_id, lambda { |company_id| where('company_id=?', company_id)}

end
