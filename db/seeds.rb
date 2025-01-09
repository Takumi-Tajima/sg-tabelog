client = GooglePlaces::Client.new(Rails.application.credentials.google.api_key)

spots = client.spots(35.5942061, 139.6735866, radius: 500, types: 'restaurant', language: 'ja')

spots.each do |spot|
  next unless spot

  spot_detail = client.spot(spot.place_id, language: 'ja')

  Shop.create!(
    name: spot.name,
    place_id: spot.place_id,
    map_url: spot_detail.url,
    business_hours: spot_detail.opening_hours ? spot_detail.opening_hours['weekday_text'] : []
  )
end
