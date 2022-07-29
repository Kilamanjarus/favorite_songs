Rails.application.routes.draw do
  #get get R patch delete
  get "/my_songs" => "songs#index"
end
