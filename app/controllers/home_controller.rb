class HomeController < ApplicationController
  def index
    @confirm ||= params[:confirm]
    @products = Product.all
  end
  
end