class CartedPursesController < ApplicationController

  def index
    @carted_purses = CartedPurse.where(status: 'carted', user_id: current_user.id)
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

  def show
  end

end
