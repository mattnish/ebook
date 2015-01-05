class CreateChapterPages < ActiveRecord::Migration
  def change
    create_table :chapter_pages do |t|
      t.string :title
      t.integer :sequence_num
      t.integer :chapter_num
      t.integer :ebook_id

      t.timestamps
    end
  end
end
