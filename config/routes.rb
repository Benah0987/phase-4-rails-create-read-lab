Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # index fetching
  get '/plants', to: 'plants#index'
  # step two
  # show to fetch single data
  get '/plants/:id', to: 'plants#show'
  # create route
  post '/plants', to: 'plants#create'



end
