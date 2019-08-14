class ChatsController < ApplicationController

    def index
        @chats = Chat.all
        render json: @chats.to_json(:include => [:users, :messages])
    end

    def show
        @chat = Chat.find(params[:id])
        render json: @chat.to_json(:include => [:users, :messages])
    end

    def new
        @chat = Chat.new
    end

    def create
    end

    def edit
    end

    def update
    end

    def destroy
    end

end
