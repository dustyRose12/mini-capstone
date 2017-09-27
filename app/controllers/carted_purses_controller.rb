class CartedPursesController < ApplicationController

  def index
    # @carted_purses = CartedPurse.where(user_id: current_user.id, status: "carted") #this is the most ruby way of writing it with colons
    # CartedPurse.where("user_id = ? AND status = ?", current_user.id, "carted") #can do it this way
    if current_user && current_user.current_cart.any? 
      @carted_purses = current_user.current_cart #we created this in the user model
    else
      flash[:warning] = "You have no items in your cart."
      redirect_to '/'
    end

  end

  def create

      carted_purse = CartedPurse.new(
                                                            user_id: current_user.id,
                                                            purse_id: params[:purse_id],
                                                            quantity: params[:quantity],
                                                            status: "carted"
                                                            )
      
      carted_purse.save
      redirect_to "/cart"

  end

  def destroy
    carted_purse = CartedPurse.find(params[:id])
    carted_purse.update(status: "removed")
    flash[:success] = "Purse Removed"
    redirect_to '/cart'
  end

end
