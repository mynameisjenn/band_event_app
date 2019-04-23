json.array! @bands.each do |band|
	json.name band.name
	json.description band.description
	json.picture_url band.picture_url
end