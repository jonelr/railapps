class Support < ActiveRecord::Base
  attr_accessible :assignedto_id, :businessunit_id, :category_id, :created_by, :description, :plant_id, :queue, :status_id, :title, :workrequest_id
end
