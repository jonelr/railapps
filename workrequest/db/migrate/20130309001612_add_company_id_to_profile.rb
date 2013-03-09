class AddCompanyIdToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :company_id, :integer
  end
end
