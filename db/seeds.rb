user = User.find_or_create_by(email: "ejemplo@example.com") do |u|
  u.name = "Ejemplo Usuario"
end

shop_names = ["Tienda 1", "Tienda 2", "Tienda 3", "Tienda 4", "Tienda 5"]
shop_names.each do |name|
  user.shops.find_or_create_by(name: name)
end
