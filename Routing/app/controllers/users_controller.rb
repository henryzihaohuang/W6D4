class UsersController < ApplicationController 
    def index
        #users = User.all
        render plain: "I'm in the index action!"
    end

    def create
        render json: params
    end

    def show
        #user = User.find(params[:id])
        render json: params
    end
end