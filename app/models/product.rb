class Product < ApplicationRecord
    belongs_to :category

    #Active Storage
  has_one_attached :image
end
