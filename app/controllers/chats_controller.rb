class ChatsController < ApplicationController

    def index
        @chats = Chat.all
        render json: @chats.to_json(:include => [:messages, :users])
    end

end
