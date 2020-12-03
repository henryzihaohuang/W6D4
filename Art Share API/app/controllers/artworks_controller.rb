class ArtworksController < ApplicationController 
    def index
        artwork = Artwork.all
        render json: artwork
    end

    def show
        artwork = Artwork.find(params[:id])
        render json: artwork
    end


    def create
        artwork = Artwork.new(user_params)
        if artwork.save
            render json: artwork
        else
            render json: artwork.errors.full_messages, status: :unprocessable_entity
        end
    end

 

    def destroy
        artwork = Artwork.find(params[:id])
        artwork.destroy
        redirect_to artwork_url
    end

    def update
        artwork = Artwork.find(params[:id])
        if artwork.update(user_params)
            redirect_to artwork_url(artwork.id)
        else
            render json: artwork.errors.full_messages, status: 422
        end
    end

private
    def user_params
        params.require(:artwork).permit(:title, :artist_id)
    end
end