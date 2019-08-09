class UsersController < ApplicationController

    def index
        @users = User.all
        render json: @users.to_json(:include => [:chats, :messages])
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end


    def new
        @user = User.new
    end


    def create
    end


    def edit
    end


    def update
    end


    def destroy
    end


    private

    def user_params
    end

    
    def find_user
    end


end
