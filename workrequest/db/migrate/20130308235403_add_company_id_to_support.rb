class AddCompanyIdToSupport < ActiveRecord::Migration
  def change
    add_column :supports, :company_id, :integer
  end
end
