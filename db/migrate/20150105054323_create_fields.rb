class CreateFields < ActiveRecord::Migration
  def change
    create_table :fields do |t|
      t.references :page, polymorphic: true, index: true
      t.string :name
      t.integer :page_id

      t.timestamps
    end
  end
end
