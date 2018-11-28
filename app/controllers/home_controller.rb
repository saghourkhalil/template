class HomeController < ApplicationController
  def index
    @items = Item.all
    puts "home"
  end

end
