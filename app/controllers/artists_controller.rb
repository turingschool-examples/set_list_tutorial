class ArtistsController < ApplicationController

   def index
      @artists = Artist.all
      if params[:sort]  
         #do stuff
      end
   end

   def new

   end

   def create
      Artist.create!(artist_params)
      redirect_to "/artists"
   end

   def destroy
      artist = Artist.find(params[:id])
      artist.destroy
      #alternatively, Artist.destroy(params[:id])
      redirect_to "/artists"
   end

private 
   def artist_params
      params.permit(:name)
   end

end