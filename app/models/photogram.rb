class Photogram < ApplicationRecord
  belongs_to :user
  attachment :image
end
