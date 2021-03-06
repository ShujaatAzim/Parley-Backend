class MessagesController < ApplicationController
    before_action :authenticate_user!

    def index
        @messages = Message.all
        render json: @messages.to_json(:include => [:chat, :user])
    end

    def show
        @message = Message.find(params[:id])
        render json: @message.to_json(:include => [:chat, :user])
    end

    def new
        @message = Message.new
    end

    def create
        @message = Message.new(message_params)
        @message.user = @current_user
        @message.save
        render json: @message
    end

    private

    def message_params
        params.require(:message).permit(:user_id, :chat_id, :content)
    end


end
