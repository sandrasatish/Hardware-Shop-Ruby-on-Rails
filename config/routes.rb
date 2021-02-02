Rails.application.routes.draw do
  
  resources :product1s
  get 'cards/show'
  resources :products
  resources :shops,only:[:index,:show]
  resources :posts
  root 'shops#index'
  resources :order_items
  resource :cards,only:[:show]
  devise_for :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
