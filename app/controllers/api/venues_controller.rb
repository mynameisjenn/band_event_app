class Api::VenuesController < ApplicationController

  def index
    @venues = Venue.all 
    render 'index.json.jbuilder'
  end

  def show 
    @venue = Venue.find(params[:id])
    render 'show.json.jbuilder'
  end

  def create
    @venue = Venue.new(
                      latitude: params[:latitude],
                      longitude: params[:longitude],
                      address: params[:address],
                      venue_name: params[:venue_name] 
                      )
    if @venue.save
      render json: { message: "Venue has been added."}, status: :created
    else
      render json: { message: "@venue.errors.full_messages"}, status: :bad_request
    end
  end

  def destroy
    @venue = Venue.find(params[:id])
    @venue.destroy
    render json: { message: "Venue has been removed"}
  end
  
end
