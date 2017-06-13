Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles
  resources :users
  root 'welcome#index'

  get '/help/' => 'static_pages#help'
  get '/about/' => 'static_pages#about'
  get '/login/' => 'sessions#new'
  post '/login/' => 'sessions#create'
  delete '/logout/' => 'sessions#destroy'
end
