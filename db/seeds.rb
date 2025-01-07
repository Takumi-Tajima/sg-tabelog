client = GooglePlaces::Client.new(Rails.application.credentials.google.api_key)

spots = client.spots(35.5942061, 139.6735866, radius: 500, types: 'restaurant', language: 'ja')

spots.each do |spot|
  next unless spot

  Shop.create!(
    name: spot.name,
    place_id: spot.place_id
  )
end
