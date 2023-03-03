class Item < ApplicationRecord
  belongs_to :user
  has_one :renting, dependent: :destroy
  has_many_attached :photos
  VILLES = %w[Marrakech Paris Fès Meknès Rabat London Casablanca Madrid Agadir Barcelona Tanger Oujda Tétouan Essaouira Berlin Kénitra Nador Ottawa El_Jadida Taza Safi Salé BéniMellal ]
  validates :location, inclusion: { in: VILLES }
  has_many :reviews, dependent: :destroy
end
