class Admin::ItemsController < ApplicationController
    
    def new
        @item = Item.new
    end
    
    def create
        @item = Item.new(item_params)
        @item.save
        redirect_to admin_items_path
    end
    
    def index
        @items = Item.all
    end
    
    private
    
    def item_params
        params.require(:item).permit(:name, :introduction, :image, :price)
    end
end
