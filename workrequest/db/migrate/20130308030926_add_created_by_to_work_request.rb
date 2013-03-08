class AddCreatedByToWorkRequest < ActiveRecord::Migration
  def change
    add_column :work_requests, :created_by, :string
  end
end
