Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
  	resources :users 
  	resources :events 
  	resources :venues
  	resources :bands
  	resources :wishlists
end


  
end
