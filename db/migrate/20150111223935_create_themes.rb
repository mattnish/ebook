class CreateThemes < ActiveRecord::Migration
  def change
    create_table :themes do |t|
      t.string :title
      t.string :cssnamespace

      t.timestamps
    end
  end
end
