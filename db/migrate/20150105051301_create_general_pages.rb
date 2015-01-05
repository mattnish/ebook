class CreateGeneralPages < ActiveRecord::Migration
  def change
    create_table :general_pages do |t|
      t.string :title
      t.integer :sequence_num
      t.integer :ebook_id

      t.timestamps
    end
  end
end
