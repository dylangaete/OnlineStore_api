class Shop < ApplicationRecord
  belongs_to :user
  has_many :categories
  has_many :products, through: :categories
  
  after_create :create_default_categories

  def create_default_categories
    return if categories.exists? # Verifica si ya existen categorías en la tienda

    default_categories = ["alimentos", "ropa", "juguetes", "utensilios", "otros"]
    default_categories.each do |category_name|
      categories.create(name: category_name)
    end
  end
end
