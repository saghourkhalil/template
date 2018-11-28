class CartController < ApplicationController
    def index
        respond_to do |format|
            format.html { redirect_to index_url }
            format.js   
         end
    end

    def show

    end
end
