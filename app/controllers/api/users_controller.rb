class Api::UsersController < ApplicationController

  def index
    @users = User.all
    render 'index.json.jbuilder'
  end

  def create
    @user = User.new(
                    username: params[:username],
                    email: params[:email],
                    password: params[:password],
                    password_confirmation: params[:password_confirmation]
                    )
    if @user.save
      render json: { message: "Your profile was created"},status: :created
    else
      render json: { message: @user.errors.full_messages},status: :bad_request
    end
  end

  def update 
    user_id = params[:id]
    @user = User.find(user_id)

    @user.email = params[:email] || @user.email
    @user.password = params[:password] || @user.password
    @user.username = params[:username] || @user.username
  end

  def destroy
    user_id = params[:id]
    @user = User.find_by(user_id)
    @user.destroy
    render json:{message: "Successfully deleted user"}
  end

end