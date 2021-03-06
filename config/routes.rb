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


  post '/orders' => 'orders#create'
  get '/orders/:id' => 'orders#show' #must be below post in this case 

  get '/cart' => 'carted_purses#index' #the index goes above the create action in this case
  post '/carted_purses' => 'carted_purses#create' #leave this url as carted_purses, but the index route can have just cart instead
  delete '/carted_purses/:id' => 'carted_purses#destroy'




end
