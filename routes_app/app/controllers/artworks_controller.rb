class ArtworksController < ApplicationController

    def index
        # render json: Artwork.all
      
            render json: Artwork.find(:artist_id)

            if params.has_key?(:artist_id)
                # index of nested resource
                artworks = Artwork.where(artist_id: params[:artist_id])
              else
                # index of top-level resource
                artworks = Artworks.all
              end
          
              render json: artworks

       
    end

    def create
        artwork = Artwork.new(artwork_params)
        if artwork.save
            render json: artwork
        else
            render json: artwork.errors.full_messages, status: :unprocessable_entity
        end
    end

    def show
        render json: Artwork.find(params[:id])
    end

    def update
        #debugger
        artwork = Artwork.find(params[:id]) 
        if artwork.update(artwork_params)
            render json: artwork
        else
            render json: artwork.errors.full_messages, status: :unprocessable_entity
        end
    end

    def destroy
        # debugger
        artwork = Artwork.find(params[:id])
        artwork.destroy
        render json: artwork
    end

    private 

    def artwork_params
        params.require(:artwork).permit(:title, :image_url, :artist_id)
    end



end