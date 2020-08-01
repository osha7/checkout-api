class CartsController < ApplicationController

    def index
        carts = Cart.all 
        render json: CartSerializer.new(carts).to_serialized_json
    end

    def show
        cart = Cart.find_by(id: params)
        render json: CartSerializer.new(cart).to_serialized_json
    end

    def destroy
        cart = Cart.find_by(id: params[:id])
        cart.destroy
        render json: CartSerializer.new(cart)
    end

end
