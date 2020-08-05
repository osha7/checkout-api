Rails.application.routes.draw do
  resources :items 
  resources :carts

  # patch '/items/:id', to: "items#update"

  get '/create-or-return-cart', to: "carts#create_or_return_cart"

end
