class AddPeriodArticlesPostedToUsers < ActiveRecord::Migration
  def change
    add_column :users, :period_articles_posted, :string, :default => 0
  end
end
