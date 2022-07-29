Rails.application.routes.draw do
  #get get R patch delete
  get "/my_songs" => "songs#index"
  get "/my_songs/:id" => "songs#show"
  post "/my_songs" => "songs#create"
  patch "my_songs/:id" => "songs#update"
end
