Rails.application.routes.draw do
  # get '/one_purse_url' => 'purses#one_purse_action'
  # get '/all_purses_url' => 'purses#all_purses_action'

  get '/' => 'purses#index'
  get 'purses' => 'purses#index'
  get 'purses/:id' => 'purses#show'


end
