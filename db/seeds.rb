require 'faker'

puts "🌊Cleaning db..."
Restaurant.destroy_all

puts "🍪 Creating Restaurants..."
category = %w(chinese italian japanese french belgian)

5.times do
  restaurants_attributes = [
    {
      name: Faker::Food.spice,
      address: Faker::Address.street_name,
      category: category.sample,
      phone_number: Faker::PhoneNumber.phone_number
    }
  ]
  Restaurant.create(restaurants_attributes)
  puts "restaurant created"
end


puts 'Finished!'
