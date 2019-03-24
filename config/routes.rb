Rails.application.routes.draw do
  get 'static_pages/help'
  get 'static_pages/about'
  get 'users/index'
  get 'users/new'
  get 'users/show'

  root 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end