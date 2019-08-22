class ChatsController < ApplicationController
    before_action :authenticate_user!

    def index
        @chats = Chat.all
        render json: @chats.to_json(:include => [:users, :topic, :messages])
    end

    def show
        @chat = Chat.find(params[:id])
        render json: @chat.to_json(:include => [:users, :topic, :messages])
    end

    def new
        # @chat = Chat.new
    end

    def create
        chat = Chat.create!(topic_id: params[:topic].to_i)
        user_chats = UserChat.create!(chat: chat, user_id: params[:user_id])
        user_chats2 = UserChat.create!(chat: chat, user: User.where.not(id: @current_user.id).sample)
        render json: chat
    end

    def edit
    end

    def update
    end

    def destroy
        @chat = Chat.find(params[:id])
        @chat.destroy
    end

    private 

    def chat_params
        params.require(:chat).permit(:topic)
    end

end
