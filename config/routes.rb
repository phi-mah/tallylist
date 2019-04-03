Rails.application.routes.draw do
  get "/contact", to: 'static_pages#contact'
  get "/home",    to: 'static_pages#home'
  get "/help",    to: 'static_pages#help'
  get "/about",   to: 'static_pages#about'
  get 'users/index'
  get 'users/new'
  get 'users/:userID', to: 'users#show'

  root 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
