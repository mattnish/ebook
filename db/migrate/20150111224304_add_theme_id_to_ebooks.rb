class AddThemeIdToEbooks < ActiveRecord::Migration
  def change
    add_column :ebooks, :theme_id, :integer, :default => 1
  end
end
