# frozen_string_literal: true

# Property.create(address: "123 Elm Street", city: "Seattle", state: "WA", max_occupancy: "4" )
# Property.create(address: "1 Park Avenue", city: "New York", state: "NY", max_occupancy: "8" )
# Property.create(address: "10000 Rodeo Drive", city: "Beverly Hills", state: "CA", max_occupancy: "20" )

50.times do
  # create User
  User.create(user_name: Faker::Name.name, password: 'password')
end

50.times do
  # create Property
  num = rand(2..12)
  Property.create(address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state, max_occupancy: num)
end

100.times do
  property = Property.all.sample
  user = User.all.sample
  nights = rand(1..14)
  guests = rand(1..12)
  Booking.create(user_id: user.id, property_id: property.id, start_date: Faker::Date.forward, number_of_nights: nights, number_of_guests: guests)
end
