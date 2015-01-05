class AddShowPictureToUsers < ActiveRecord::Migration
  def change
    add_column :users, :show_picture, :integer
  end
end
