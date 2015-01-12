# == Schema Information
#
# Table name: themes
#
#  id           :integer          not null, primary key
#  title        :string(255)
#  cssnamespace :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

class Theme < ActiveRecord::Base
  has_many :ebooks
end
