class ItemsController < ApplicationController
    def index
        items=Item.all
        render json: items
    end

    def show
        item=Item.find_by(id:params[:id])
        render json: item
    end

    def create
        new_item=Item.create(item_params)
        render json: new_item
    end

    def destroy
        delete_item=Item.find_by(id:params[:id])
        delete_item.destroy
        head:no_content
    end

end
