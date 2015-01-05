class CreateFieldGroups < ActiveRecord::Migration
  def change
    create_table :field_groups do |t|
      t.references :page, polymorphic: true, index: true
      t.string :name
      t.integer :page_id

      t.timestamps
    end
  end
end
