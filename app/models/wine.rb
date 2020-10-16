class Wine < ApplicationRecord
  validates :score, :inclusion => { :in => 0..100 }
  has_and_belongs_to_many :cepas
end
