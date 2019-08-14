class MessagesController < ApplicationController

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
        @message.save
        render json: @message
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private

    def message_params
        params.require(:message).permit(:user_id, :chat_id, :content)
    end


end
