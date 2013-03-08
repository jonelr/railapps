class AddBusinessUnitIdToWorkRequest < ActiveRecord::Migration
  def change
    add_column :work_requests, :business_unit_id, :integer
  end
end
