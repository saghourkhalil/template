Rails.application.routes.draw do
  get 'home/index'
  get 'home/show'
  get 'home/index'
  post 'home/index'
  post 'home/show'
  root 'home#index'
  get 'home/profil'
  post 'home/profil'
  resources :show
  resources :profil
  devise_for :users
  resources :item
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
