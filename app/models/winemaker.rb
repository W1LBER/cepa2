class Winemaker < ApplicationRecord
  belongs_to :position
  belongs_to :magazine
end
