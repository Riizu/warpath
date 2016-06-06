Rails.application.routes.draw do
  mount Peek::Railtie => '/peek'
  resources :users

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
