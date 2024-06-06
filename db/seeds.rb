require 'faker'

# Clear existing data
Product.delete_all

# Create fake data
50.times do
  Product.create(
    name: Faker::Commerce.product_name,
    category: Faker::Commerce.department,
    brand: Faker::Company.name,
    price: Faker::Commerce.price(range: 10..1000).to_i,
    quantity: Faker::Number.between(from: 1, to: 100)
  )
end

puts "Seeded 50 products."
