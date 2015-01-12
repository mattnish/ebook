# == Schema Information
#
# Table name: field_groups
#
#  id           :integer          not null, primary key
#  page_id      :integer
#  page_type    :string(255)
#  content_type :string(255)
#  name         :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#  required     :boolean          default(FALSE)
#  cssnamespace :string(255)
#

class FieldGroup < ActiveRecord::Base
  belongs_to :page, polymorphic: true
  has_many :text_fields, as: :field
  has_many :image_fields, as: :field
  has_many :wysiwyg_fields, as: :field
end
