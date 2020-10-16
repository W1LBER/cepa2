class Winemaker < ApplicationRecord
  belongs_to :position
  belongs_to :magazine


  has_many :wine_winemakers
  has_many :wines, through: :wine_winemakers
end
