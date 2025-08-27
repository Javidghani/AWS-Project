class CartItemsController < ApplicationController
  def create
    product_id = params[:product_id]
    quantity = params[:quantity].to_i
    size = params[:size]
    color = params[:color]

    # For now, just flash a message and redirect back
    flash[:notice] = "Added #{quantity} × product ##{product_id} (Size: #{size}, Color: #{color}) to your cart."
    redirect_back fallback_location: root_path
  end
end
