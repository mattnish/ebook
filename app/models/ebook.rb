class Ebook < ActiveRecord::Base

  belongs_to :user
  has_many :cover_pages
  has_many :general_pages
  has_many :segment_pages
  has_many :chapter_pages

end
