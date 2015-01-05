class AddArticlesPostedToUsers < ActiveRecord::Migration
  def change
    add_column :users, :articles_posted, :integer
  end
end
