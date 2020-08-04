Rails.application.routes.draw do
  resources :items
  resources :carts

  get '/create-or-return-cart', to: "carts#create_or_return_cart"

end
