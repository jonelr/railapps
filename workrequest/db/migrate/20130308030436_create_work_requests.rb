class CreateWorkRequests < ActiveRecord::Migration
  def change
    create_table :work_requests do |t|
      t.string :title
      t.integer :businessunit_id
      t.integer :category_id
      t.integer :status_id
      t.integer :plant_id
      t.integer :area_id
      t.string :requestors
      t.string :queue

      t.timestamps
    end
  end
end
