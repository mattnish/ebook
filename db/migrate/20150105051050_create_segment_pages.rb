class CreateSegmentPages < ActiveRecord::Migration
  def change
    create_table :segment_pages do |t|
      t.string :title
      t.integer :sequence_num
      t.integer :ebook_id

      t.timestamps
    end
  end
end
