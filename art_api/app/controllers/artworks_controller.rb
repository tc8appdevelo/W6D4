class ArtworksController < ApplicationController
    def index
        #user_art = Artwork.find_by(artist_id: params[:user_id])
        param_id = params[:user_id]
        artwork_by = Artwork.select('*')
                      .where(artist_id: params[:user_id])


        render json: artwork_by
    end

    def show
        artwork = Artwork.find(params[:id])
        render json: artwork
    end

    def create
        artwork = Artwork.new(artwork_params)
        # replace the `Artwork_attributes_here` with the actual attribute keys
        if artwork.save
            redirect_to artwork_url(artwork)
        else
            render json: artwork.errors.full_messages, status:422
        end
    end

    def update
        artwork = Artwork.find(params[:id])
        if artwork.update(artwork_params)
            redirect_to artwork_url(artwork)
        else
            render json: artwork.errors.full_messages, status:422
        end
    end

    def destroy
        artwork = Artwork.find(params[:id])
        if artwork.destroy
            render json: artwork
        else
            render json: artwork.errors.full_messages, status:422
        end
    end

    private


    def artwork_params
        params.require(:artwork).permit(:title, :artist_id, :image_url)
    end

end