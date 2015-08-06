class ItemsController < ApplicationController
    def index
        @items = Item.all.order('id DESC')
    end
    
    def new
        @item = Item.new
    end
    
    def create 
        Item.create(item_params)
        redirect_to items_path 
    end
   
    def edit 
        @item = Item.find(params[:id])
    end
    
    def update
        @item = Item.find(params[:id])
        @item.update_attributes(item_params)
        redirect_to items_path
    end
    
    def destroy
        @item = Item.find(params[:id])
        @item.destroy
        redirect_to items_path
    end
    
    private 
   
    def item_params
        params.require(:item).permit(:name,:description,:category)
    end
end
