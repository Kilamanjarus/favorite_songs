class SongsController < ApplicationController
  def index
    # render json: { message: "stop forggeting this part you cyka" }
    songs = Song.all
    render json: songs.as_json
  end

  def show
    p id: params[:id]
    song = Song.find_by(id: params[:id])
    render json: song.as_json
    # render json: { message: "You remembered!" }
  end

  def create
    song = Song.new(title: "The Safety Dance", albunm: "Rhythm of Youth", artist: "Men Without Hats", year: "1982")
    song.save
    # render json: { message: "2/3" }
  end

  def update
    render json: { message: "getting this habbit now" }
  end
end
