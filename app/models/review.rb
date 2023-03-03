class Review < ApplicationRecord
  belongs_to :item
  validates :content, length: {minimum: 20}
end
