class TextField < ActiveRecord::Base
  belongs_to :field, polymorphic: true
end
