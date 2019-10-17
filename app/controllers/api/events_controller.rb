require 'unirest'

class Api::EventsController < ApplicationController

	def index
		## added the seatgeek api
		response = Unirest.get("https://api.seatgeek.com/2/events?client_id=")
		@event_info = response.body
		@event_hash = @event_info["events"]

		# event_hash.each do |event|
		# 	puts "#{event["id"]}"
		# end

		# @event_info.each do |event|
		# 	p event
		# end

		# people.each do |person|
  # 			puts "#{person[:name]}: #{person[:occupation]}"
		# end

		# @events = Event.all
		render 'index.json.jbuilder'
	end

	def show
		@event = Event.find(params[:id])
		render 'show.json.jbuilder'
	end

	def create
		@event = Event.new( 
							band_id: params[:band_id],
							event_date: params[:event_date],
							venue_id: params[:venue_id],
							favorited: params[:favorited],
							user_id: params[:user_id]
							)
		if @event.save
			render json: { message: "Event has been added." }, status: :created
		else 
			render json: { message: @event.errors.full_messages }, status: :bad_request
		end	
	end

	def update
		@event = Event.find(params[:id])

		@event.event_date = params[:event_date] || @event.event_date
		@event.favorited = params[:favorited] || @event.favorited

		if @event.save 
			render 'show.json.jbuilder'
		else
			render json: { message: @event.errors.full_messages}, status: :bad_request
		end
	end

	def destroy
		@event = Event.find(params[:id])
		@event.destroy
		render json: { message: "Event has been removed."}
	end
end
