class ProductsController < ApplicationController
  def index 
    @cart = cart
  end 

  def add
    # Get the item from the path
    @item = params[:product]
   
    # Load the cart from the session, or create a new empty cart.
    cart << @item  
    # Save the cart in the session.
    session[:cart] = cart
    redirect_to root_path
  end 
end
