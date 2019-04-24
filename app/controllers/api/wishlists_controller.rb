class Api::WishlistsController < ApplicationController

	def index
		@wishlists = Wishlist.all
		render 'index.json.jbuilder'
	end

	def show
		@wishlist = Wishlist.find(params[:id])
		render 'show.json.jbuilder'
	end

	def create
		@wishlist = Wishlist.new(
									 event_id: params[:event_id],
									 user_id: params[:user_id]
									)
	if @wishlist.save
		render json: { message: "Wishlist has been created."}, status: :created
	else
		render json: { message: @wishlist.errors.full_messages}, status: :bad_request
	end

	def destroy
		@wishlist = Wishlist.find(params[:id])
		@wishlist.destroy
		render json: { message: "Wishlist has been removed."}
	end

end
