# == Schema Information
#
# Table name: text_fields
#
#  id         :integer          not null, primary key
#  field_id   :integer
#  field_type :string(255)
#  text       :text
#  created_at :datetime
#  updated_at :datetime
#

class TextField < ActiveRecord::Base
  belongs_to :field, polymorphic: true
end
