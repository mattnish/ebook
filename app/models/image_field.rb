class ImageField < ActiveRecord::Base
  belongs_to :field, polymorphic: true
end
