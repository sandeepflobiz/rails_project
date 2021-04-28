Rails.application.routes.draw do
  get 'home/about'
  get 'users/getAll'
  get 'users/getUser'
  post 'users/createUser'
  put 'users/updateUser'
  delete 'users/deleteUser'
  root 'home#index'
  # get 'home/about'
  resources :microposts
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
