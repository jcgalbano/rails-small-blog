Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles
  root 'welcome#index'

  get '/help/' => 'static_pages#help'
  get '/about/' => 'static_pages#about'
end
