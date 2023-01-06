class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    song = Song.create!(song_params)
    redirect_to "/songs"
  end


  private
  def song_params
    params.require(:song).permit(:title, :length, :play_count, :artist_id)
  end
end
