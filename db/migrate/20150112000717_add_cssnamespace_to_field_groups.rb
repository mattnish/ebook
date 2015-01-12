class AddCssnamespaceToFieldGroups < ActiveRecord::Migration
  def change
    add_column :field_groups, :cssnamespace, :string
  end
end
