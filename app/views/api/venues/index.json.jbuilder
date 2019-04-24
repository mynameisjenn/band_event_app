json.array! @venues do |venue|
	json.latitude venue.latitude
	json.longitude venue.longitude
	json.address venue.address
	json.venue_name venue.venue_name
end