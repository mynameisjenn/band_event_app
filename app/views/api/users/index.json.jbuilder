json.array! @users do |user|
	json.user_id user.id
	json.username user.username
	json.email user.email
end
