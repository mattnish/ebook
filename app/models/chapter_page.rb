# == Schema Information
#
# Table name: chapter_pages
#
#  id           :integer          not null, primary key
#  title        :string(255)
#  sequence_num :integer
#  chapter_num  :integer
#  ebook_id     :integer
#  created_at   :datetime
#  updated_at   :datetime
#

class ChapterPage < ActiveRecord::Base

  belongs_to :ebook
  has_many :field_groups, as: :page

end
