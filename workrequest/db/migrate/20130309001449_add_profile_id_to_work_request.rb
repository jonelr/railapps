class AddProfileIdToWorkRequest < ActiveRecord::Migration
  def change
    add_column :work_requests, :profile_id, :integer
  end
end
