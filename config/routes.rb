Rails.application.routes.draw do
  get '/signup'=> 'donors#new'
  post '/donors' => 'donors#create'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  root 'dashboard#index'

end
