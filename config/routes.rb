Rails.application.routes.draw do
  devise_for :users
  root 'products#index'

  get 'carts' => "carts#show"
  get 'carts/:id' => "carts#show", as: "cart"
  delete 'carts/:id' => "carts#destroy"

  post 'items/:id/add' => "items#add_quantity", as: "item_add"
  post 'items/:id/reduce' => "items#reduce_quantity", as: "item_reduce"
  post 'items' => "items#create"
  get 'items/:id' => "items#show", as: "item"
  delete 'items/:id' => "items#destroy"

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :products
  resources :categories
  resources :orders
end
