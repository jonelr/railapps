class RemoveBusinessUnitIdFromWorkRequest < ActiveRecord::Migration
  def up
    remove_column :work_requests, :businessunit_id
    remove_column :work_requests, :business_unit_id

  end

  def down
    add_column :work_requests, :businessunit_id, :integer
    add_column :work_requests, :business_unit_id, :integer

  end
end
