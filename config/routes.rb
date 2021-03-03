Rails.application.routes.draw do
  resources :sessions
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  get '/welcome', to: 'users#show'
end
