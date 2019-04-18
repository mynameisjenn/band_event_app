class Api::BandsController < ApplicationController

  def index 
    @bands = Band.all
    render 'index.json.jbuilder'
  end

  def show 
    @band = Band.find(params[:id])
    render 'show.json.jbuilder'
  end

  def create
    @band = Band.new(
                     name: params[:name],
                     description: params[:description],
                     picture_url: params[:picture_url]
                    )
  if @band.save
      render json: { message: "Your band have been added"}, status: :created
  else
      render json: { message: @band.errors.full_messages}, status: :bad_request
  end

  def destroy
    @band = Band.find(params[:id])
    @band.destroy
    render json: { messages: "Your band has been removed."}
  end

end
