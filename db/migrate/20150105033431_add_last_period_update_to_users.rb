class AddLastPeriodUpdateToUsers < ActiveRecord::Migration
  def change
    add_column :users, :last_period_update, :datetime
  end
end
