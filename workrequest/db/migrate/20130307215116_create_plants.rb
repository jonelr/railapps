class CreatePlants < ActiveRecord::Migration
  def change
    create_table :plants do |t|
      t.string :title

      t.timestamps
    end
  end
end
