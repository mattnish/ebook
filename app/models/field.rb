class Field < ActiveRecord::Base
  belongs_to :page, polymorphic: true
  has_one :text_field, as: :field
  has_one :image_field, as: :field
  has_one :wysiwyg_field, as: :field

end
