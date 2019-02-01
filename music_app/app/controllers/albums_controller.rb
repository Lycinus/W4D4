class AlbumsController < ApplicationController

    def new
        @bands = Band.all
    end

    def create
        album = Album.new(album_params)
        band = Band.find_by(params[:band_id])
        if album.save
            redirect_to band_url(band)
        else
            render json: 'Error'
        end
    end

    def edit
        @album = Album.find(params[:id])
        @bands = Band.all
    end

    def update
        album = Album.find(params[:id])
        if album.update_attributes!(album_params)
            redirect_to album_url(album)
        else
            render plain: 'Error!'
        end
    end

    def show
        @album = Album.find(params[:id])
    end

    def destroy
        album = Album.find(params[:id])
        album.destroy
        redirect_to bands_url
    end

    private

    def album_params
        params.require(:album).permit(:title, :year, :band_id, :is_live?)
    end
end