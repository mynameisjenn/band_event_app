json.array! @wishlists.each do |wishlist|
  json.event_id wishlist.event_id
  json.user_id wishlist.user_id
end