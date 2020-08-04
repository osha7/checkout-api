class CartsController < ApplicationController

    def index
        carts = Cart.all 
        render json: CartSerializer.new(carts).to_serialized_json
    end

    def show
        cart = Cart.find_by(id: params)
        render json: CartSerializer.new(cart).to_serialized_json
    end

    def create_or_return_cart
        if Cart.any?
            cart = Cart.last
        else
            cart = Cart.create(cart_params)
        end
        render json: CartSerializer.new(cart).to_serialized_json
    end

    # def create
    #     cart = Cart.create(cart_params)
    #     render json: CartSerializer.new(cart).to_serialized_json
    # end

    def destroy
        cart = Cart.find_by(id: params[:id])
        cart.destroy
        render json: CartSerializer.new(cart)
    end

    private

    def cart_params
        params.require(:cart).permit(:quantity, :total, :sales_tax)
    end

end
