class HomeController < ApplicationController
  protect_from_forgery with: :exception
  helper_method :current_order
  def index
    @items = Item.all
  end


  def current_order
    if !session[:item_id].nil?
      Item.find(session[:item_id])
    else
      Item.new
    end
  end

end
