class CreateSupportComments < ActiveRecord::Migration
  def change
    create_table :support_comments do |t|
      t.string :comment
      t.integer :support_id

      t.timestamps
    end
  end
end
