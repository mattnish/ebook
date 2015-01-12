class AddContentTypeToFieldGroups < ActiveRecord::Migration
  def change
    add_column :field_groups, :content_type, :string
  end
end
