json.array! @event_hash.each do |event_stuff|
	json.id event_stuff["id"]
	json.artist event_stuff["title"]
	json.date_time event_stuff["datetime_local"]
	json.image event_stuff["performers"]
	json.venue event_stuff["venue"]


end

# json.array! @events.each do |event|
#   json.band_id event.band_id
#   json.event_date event.event_date
#   json.venue_id event.venue_id
#   json.favorited event.favorited
#   json.user_id event.user_id
# end