class TopicsController < ApplicationController
    
    def index
        @topics = Topic.all
        render json: @topics.to_json(:include => [:chats])
    end

    def show
        @topic = Topic.find(params[:id])
        render json: @topic.to_json(:include => [:chats])
    end

    def new
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
