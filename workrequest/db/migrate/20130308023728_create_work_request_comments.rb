class CreateWorkRequestComments < ActiveRecord::Migration
  def change
    create_table :work_request_comments do |t|
      t.string :comment
      t.integer :workrequest_id

      t.timestamps
    end
  end
end
