class AddCompanyIdToWorkRequest < ActiveRecord::Migration
  def change
    add_column :work_requests, :company_id, :integer
  end
end
