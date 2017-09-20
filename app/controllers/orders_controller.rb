class OrdersController < ApplicationController

  def create

    order = Order.new(
                                  user_id: current_user.id,
                                  quantity: params[:quantity],
                                  purse_id: params[:purse_id],
                                  )

    order.calculate_totals
    order.save
    
    flash[:success] = 'Successfully created an order!'
    redirect_to "/orders/#{order.id}"
  
  end

  def show
    @order = Order.find(params[:id])

  end



end
