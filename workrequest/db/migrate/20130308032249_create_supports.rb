class CreateSupports < ActiveRecord::Migration
  def change
    create_table :supports do |t|
      t.string :title
      t.integer :workrequest_id
      t.integer :category_id
      t.integer :assignedto_id
      t.integer :status_id
      t.integer :plant_id
      t.integer :businessunit_id
      t.string :queue
      t.text :description
      t.string :created_by

      t.timestamps
    end
  end
end
