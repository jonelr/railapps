class WorkRequest < ActiveRecord::Base
  attr_accessible :area_id, :businessunit_id, :category_id, :plant_id, :queue, :requestors, :status_id, :title, :created_by
  has_one :area
  has_one :businessunit
  has_one :category
  has_one :plant
  has_one :status
end
