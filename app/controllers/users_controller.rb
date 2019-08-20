class UsersController < ApplicationController
    before_action :authenticate_user!

    def index
        @users = User.all
        render json: @users.to_json(:include => [:chats, :messages])
    end

    def show
        @user = User.find(params[:id])
        render json: @user.to_json(:include => [:chats, :messages])
    end

    def whoami
        render json: @current_user
    end

end
