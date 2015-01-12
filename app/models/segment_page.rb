# == Schema Information
#
# Table name: segment_pages
#
#  id           :integer          not null, primary key
#  title        :string(255)
#  sequence_num :integer
#  ebook_id     :integer
#  created_at   :datetime
#  updated_at   :datetime
#

class SegmentPage < ActiveRecord::Base

  belongs_to :ebook
  has_many :field_groups, as: :page

end
