require 'test_helper'

class ShopTest < ActiveSupport::TestCase
  test "create_default_categories creates 5 default categories" do
    user = User.find_or_create_by(email: "john@example.com") do |u|
      u.name = "John Doe"
      # Otras atributos del usuario si es necesario
    end

    shop = Shop.new(name: "Mi Tienda", user: user)
    shop.save

    shop.create_default_categories

    assert_equal 5, shop.categories.count
  end
end
