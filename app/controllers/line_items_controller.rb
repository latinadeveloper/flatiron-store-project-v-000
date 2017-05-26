class LineItemsController < ApplicationController
  def create
    if !current_user.current_cart #creates a new cart
      current_user.current_cart = Cart.create
      current_user.save
    end

  end


end
