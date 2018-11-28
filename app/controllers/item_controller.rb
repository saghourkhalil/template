class ItemController < ApplicationController
    include CurrentCart
    before_action :set_cart, only: [:create]
    def index
        puts "index"
      @items = Item.all
    end
  
    def create
      @item = Item.find(params[:id])
      @cart_item = @cart.cart_items.new(item: item)
      puts "create"
      respond_to do |format|
        format.html { redirect_to @cart_item.cart }
        format.js    { render :layout => false }
      end
    end
  
    def show
        puts "show"
    end
end
