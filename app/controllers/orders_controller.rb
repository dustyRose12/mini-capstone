class OrdersController < ApplicationController

  def create

    carted_purses = current_user.current_cart   
    order = Order.create(user_id: current_user.id) #subtotal, tax and total are nil at this point. we used create in place of .new + .save
    carted_purses.update_all(status: "ordered", order_id: order.id)
    order.calculate_totals #once you have the order id, then you can calculate the subtotal, tax and total in the real ordered items
    order.save #have to do it twice so it updates this last bit
        
    flash[:success] = 'Successfully created an order!'
    redirect_to "/orders/#{order.id}"

  end


  def show
    @order = Order.find(params[:id])

    #this part is so that the user can only see their cart and not someone else's
    redirect_to '/' unless current_user && current_user.id == @order.user_id
  end



end
