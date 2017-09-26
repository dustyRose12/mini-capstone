class OrdersController < ApplicationController

  def create

  CartedPurse.all.each do |carted_purse|
    if carted_purse.status = 'carted'
          order = Order.new(
                                        user_id: current_user.id,
                                        quantity: params[carted_purse.quantity],
                                        purse_id: params[carted_purse.purse_id],
                                        )

          order.calculate_totals
          order.save
          
          carted_purse.status = 'purchased'
          # carted_purse.order_id = order.id //carted_purses doesn't have an order_id attrb

          flash[:success] = 'Successfully created an order!'
          redirect_to "/orders/#{order.id}"


      end


  
  end

  def show
    @order = Order.find(params[:id])

  end



end
