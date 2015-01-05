class AddStateNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :state_name, :string, :default => ""
  end
end
