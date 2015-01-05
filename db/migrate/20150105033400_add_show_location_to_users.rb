class AddShowLocationToUsers < ActiveRecord::Migration
  def change
    add_column :users, :show_location, :integer, :default => 1
  end
end
