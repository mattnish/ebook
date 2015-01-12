class AddLayoutToFieldGroups < ActiveRecord::Migration
  def change
    add_column :field_groups, :layout, :string
  end
end
