class SegmentPage < ActiveRecord::Base

  belongs_to :ebook
  has_many :fields, as: :page

end
