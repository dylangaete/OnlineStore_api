class Category < ApplicationRecord
    #relations
    belongs_to :shop
    has_many :products
end
