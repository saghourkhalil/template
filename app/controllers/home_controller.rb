class HomeController < ApplicationController
  include CurrentCart
  before_action :set_cart, only: [:create]
  def index
    @items = Item.all
  end

  def create
    @item = Item.find(params[:id])
  end

end
