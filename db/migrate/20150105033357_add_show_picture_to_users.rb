class AddShowPictureToUsers < ActiveRecord::Migration
  def change
    add_column :users, :show_picture, :integer, :default => 1
  end
end
