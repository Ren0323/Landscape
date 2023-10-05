class Favorit < ApplicationRecord
  belongs_to :user
  belongs_to :landscape_info
end
