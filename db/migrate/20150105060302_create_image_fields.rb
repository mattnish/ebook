class CreateImageFields < ActiveRecord::Migration
  def change
    create_table :image_fields do |t|
      t.references :field, polymorphic: true, index: true
      t.string :url
      t.integer :field_id

      t.timestamps
    end
  end
end
