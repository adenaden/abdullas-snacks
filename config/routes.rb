Rails.application.routes.draw do

  get 'products/index'

  root :to => "products#index"
  resources :purchases, only: [:new, :create]
  resources :products, only: [:index, :new, :create]  
end
