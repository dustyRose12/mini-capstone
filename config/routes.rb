Rails.application.routes.draw do
  get '/' => 'purses#index'
  get '/purses' => 'purses#index'

  get '/purses/new' => 'purses#new'
  post '/purses' => 'purses#create'

  get '/purses/random' => 'purses#random' #must be before purses/:id otherwise it'll trigger random as an ":id" param. IF we put the purse.all.sample line into the show method, so we don't need the random route anymore. now the "random" word gets passed as a param into the show page. 

  get '/purses/:id' => 'purses#show'

  get '/purses/:id/edit' => 'purses#edit'
  patch '/purses/:id' => 'purses#update'

  delete '/purses/:id' => 'purses#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'



end
