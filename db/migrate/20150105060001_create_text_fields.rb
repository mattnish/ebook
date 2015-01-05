class CreateTextFields < ActiveRecord::Migration
  def change
    create_table :text_fields do |t|
      t.references :field, polymorphic: true, index: true
      t.text :text
      t.integer :field_id

      t.timestamps
    end
  end
end
