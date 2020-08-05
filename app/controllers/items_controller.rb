class ItemsController < ApplicationController

    def index
        items = Item.all 
        render json: ItemSerializer.new(items).to_serialized_json
    end

    def show
        item = Item.find_by(id: params[:id])
        render json: ItemSerializer.new(item).to_serialized_json
    end

    def create
        item = Item.create(item_params)
        render json: ItemSerializer.new(item).to_serialized_json
    end

    def update
        byebug
        # item = Item.find_by(id: params[:id])
        # if item.cart_id == null
        #     item.cart_id == 
    end


    def destroy
        item = Item.find_by(id: params[:id])
        item.destroy
        render json: ItemSerializer.new(item)
    end

    private

    def item_params
        params.require(:item).permit(:name, :price, :description, :img_source, :available, :item_count, :cart_id)
    end

end

