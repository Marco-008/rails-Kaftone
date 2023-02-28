class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  VILLES = %w[Marrakech Fès Meknès Rabat Casablanca Agadir Tanger Oujda Tétouan Essaouira Kénitra Nador El_Jadida Taza Safi Salé Béni_Mellal]
  validates :location, inclusion: { in: VILLES }
end
