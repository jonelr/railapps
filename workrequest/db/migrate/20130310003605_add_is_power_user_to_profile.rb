class AddIsPowerUserToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :ispoweruser, :boolean
  end
end
