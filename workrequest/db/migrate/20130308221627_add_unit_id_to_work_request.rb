class AddUnitIdToWorkRequest < ActiveRecord::Migration
  def change
    add_column :work_requests, :unit_id, :integer
  end
end
