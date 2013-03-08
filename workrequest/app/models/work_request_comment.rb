class WorkRequestComment < ActiveRecord::Base
  attr_accessible :comment, :workrequest_id
end
