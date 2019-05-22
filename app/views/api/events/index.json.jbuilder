json.array! @event_info.each do |event_hash|
	json.venues event_hash["venue"]
	json.lineup event_hash["lineup"]
	json.date_time event_hash["datetime"]
end

# json.array! @events.each do |event|
#   json.band_id event.band_id
#   json.event_date event.event_date
#   json.venue_id event.venue_id
#   json.favorited event.favorited
#   json.user_id event.user_id
# end