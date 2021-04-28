Rails.application.routes.draw do
  get 'home/about'
  root 'home#index'
  # get 'home/about'
  resources :microposts
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
