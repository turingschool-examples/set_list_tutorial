class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def new
  end

  def create
    artist = Artist.create(artist_params)
    redirect_to artists_path
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    artist = Artist.find(params[:id])
    artist.update(artist_params)
    redirect_to artists_path
  end

  def destroy
    artist = Artist.find(params[:id])
    artist.destroy
    redirect_to artists_path
  end

private
  def artist_params
    params.permit(:name)
  end
end
