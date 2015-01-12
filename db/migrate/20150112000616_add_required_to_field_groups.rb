class AddRequiredToFieldGroups < ActiveRecord::Migration
  def change
    add_column :field_groups, :required, :boolean, :default => true
  end
end
