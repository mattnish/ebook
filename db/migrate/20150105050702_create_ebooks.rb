class CreateEbooks < ActiveRecord::Migration
  def change
    create_table :ebooks do |t|
      t.string :title, :default => ""
      t.text :description, :default => ""
      t.string :cover_image, :default => ""
      t.boolean :use_cover_image, :default => false
      t.string :publisher_name, :default => ""
      t.integer :view_count, :default => 0
      t.integer :active_status, :default => 1
      t.integer :user_id

      t.timestamps
    end
  end
end
