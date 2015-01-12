# == Schema Information
#
# Table name: image_fields
#
#  id         :integer          not null, primary key
#  field_id   :integer
#  field_type :string(255)
#  url        :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class ImageField < ActiveRecord::Base
  belongs_to :field, polymorphic: true
end
