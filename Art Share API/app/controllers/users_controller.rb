class UsersController < ApplicationController 
    def index
        users = User.all
        render json: users
    end

    def show
        users = User.find(params[:id])
        render json: users
    end


    def create
        users = User.new(user_params)
        if user.save
            render json: users
        else
            render json: users.errors.full_messages, status: :unprocessable_entity
        end
    end

 

    def destroy
        users = User.find(params[:id])
        users.destroy
        # redirect_to "/posts" # sends to index with NEW request/response cycle
        # redirect will only GET
        redirect_to users_url
    end

    def update
        users = User.find(params[:id])
        if users.update(user_params)
            redirect_to users_url(users.id)
        else
            render json: users.errors.full_messages, status: 422
        end
    end

    def user_params
        # require(:top_level_key)
        # permit(:nested, :keys, :we, :permit)
        params.require(:user).permit(:body, :author_id)
    end
end