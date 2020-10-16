class Wine < ApplicationRecord
  has_and_belongs_to_many :cepas

  has_many :wine_winemakers
  has_many :winemakers, through: :wine_winemakers
end
