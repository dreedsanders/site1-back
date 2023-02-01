class StoreController < ApplicationController
  def index
    @products =  Product.order(:title) #.order is a method that will order the products based on the argument
  end
end
