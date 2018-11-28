Rails.application.routes.draw do
  resources :cart_items
  resources :home
  root 'home#index'
  get 'home/profil'
  post 'home/profil'
  resources :show
  resources :profil
  resources :cart
  resources :item
  devise_for :users
<<<<<<< HEAD
  resources :item
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
=======

>>>>>>> master
end
