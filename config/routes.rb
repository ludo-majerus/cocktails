Rails.application.routes.draw do
  resources :orders
  resources :cocktails
  get '/cat/:category', to: 'cocktails#category'

  get '/login', to: 'cocktails#login'

  root to: 'cocktails#index' 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
