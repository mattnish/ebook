# == Schema Information
#
# Table name: ebooks
#
#  id              :integer          not null, primary key
#  title           :string(255)      default("")
#  description     :text             default("")
#  cover_image     :string(255)      default("")
#  use_cover_image :boolean          default(FALSE)
#  publisher_name  :string(255)      default("")
#  view_count      :integer          default(0)
#  active_status   :integer          default(1)
#  user_id         :integer
#  created_at      :datetime
#  updated_at      :datetime
#  theme_id        :integer          default(1)
#

class Ebook < ActiveRecord::Base

  belongs_to :user
  belongs_to :theme
  has_many :cover_pages
  has_many :general_pages
  has_many :segment_pages
  has_many :chapter_pages

  def pages
    # TODO: Get all types of pages in sequential order
  end

end
