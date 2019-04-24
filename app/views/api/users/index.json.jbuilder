json.array! @users do |user|
	json.user_id user.user_id
	json.username user.username
	json.email user.email
end
