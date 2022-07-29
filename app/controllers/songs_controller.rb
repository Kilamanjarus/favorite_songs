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
    song = Song.new(
      title: params[:title],
      albunm: params[:albunm],
      artist: params[:artist],
      year: params[:year],
    )
    song.save
    # render json: { message: "2/3" }
  end

  def update
    song = Song.find_by(id: params[:id])
    song.title = params[:title]
    song.albunm = params[:albunm]
    song.artist = params[:artist]
    song.year = params[:year]
    song.save
    # render json: { message: "getting this habbit now" }
  end

  def destroy
    song = Song.find_by(id: params[:id])
    song.delete
    # render json: { message: "Id say itsa habbit" }
  end
end
