class FieldGroup < ActiveRecord::Base
  belongs_to :page, polymorphic: true
  has_many :text_fields, as: :field
  has_many :image_fields, as: :field
  has_many :wysiwyg_fields, as: :field
end
