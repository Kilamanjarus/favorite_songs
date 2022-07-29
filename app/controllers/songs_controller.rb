class SongsController < ApplicationController
  def index
    # render json: { message: "stop forggeting this part you cyka" }
    songs = Song.all
    render json: songs.as_json
  end
end
