class HomeController < ApplicationController
<<<<<<< HEAD
  protect_from_forgery with: :exception
  helper_method :current_order
=======
  include CurrentCart
  before_action :set_cart, only: [:create]
>>>>>>> master
  def index
    @items = Item.all
  end

<<<<<<< HEAD

  def current_order
    if !session[:item_id].nil?
      Item.find(session[:item_id])
    else
      Item.new
    end
=======
  def create
    @item = Item.find(params[:id])
>>>>>>> master
  end

end
