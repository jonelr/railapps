class WorkRequest < ActiveRecord::Base
  attr_accessible :area_id, :businessunit_id, :category_id, :plant_id, :queue, :requestors, :status_id, :title, :created_by
  has_one :area
  has_one :businessunit
  has_one :category
  has_one :plant
  has_one :status

  validates :title, :presence => true
  validates :area_id, :presence => true
  validates :businessunit_id, :presence => true
  validates :category_id, :presence => true
  validates :plant_id, :presence => true
  validates :status_id, :presence => true

end
