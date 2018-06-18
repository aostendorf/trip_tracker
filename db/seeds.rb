50.times do
  Trip.create(
    name: Faker::Lorem.words
  )
end

50.times do
  Location.create(
    name: Faker::Space.planet
  )
end

50.times do
  Address.create(
    street_address: Faker::Address.street_address,
    city: Faker::Address.city,
    state: Faker::Address.state,
    zip: Faker::Address.zip
  )
end