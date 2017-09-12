class PursesController < ApplicationController

  def index
    @purses = Purse.all

    sort_attribute = params[:sort]
    order_attribute = params[:sort_order]
    discount_amount = params[:discount]
    random = params[:random]

    search_name = params[:search]

    if discount_amount
      @purses = @purses.where("price < ?", discount_amount)
    end
   
    if sort_attribute && order_attribute
      @purses = @purses.order({sort_attribute =>  order_attribute}) #this makes it more dynamic, lets you type whatever value i.e, desc or asc into the order_attribute search bar, or any sort_attribute 
    elsif sort_attribute
      @purses = @purses.order(sort_attribute)
    end

    if random
      @purses = @purses.order("RANDOM()").first(1)
      #active record queries also has a pluck method, that plucks one out product.find_by(product.all.pluck(:id).sample). you can write the method in the purse.rb file instead 
    end


    if search_name 
      @purses = @purses.where("#{:name} iLIKE ?", "%#{search_name}%")
    end


  end


  def new
  end

  def create 
    purse = Purse.new(
                                    name: params[:name],
                                    price: params[:price],
                                    image: params[:image],
                                    description: params[:description]
                                    )
    purse.save
    flash[:success] = "Purse Successfully Created"
    redirect_to "/purses/#{purse.id}"

  end

   def show
    @purse = Purse.find(params[:id])
  end

  def edit
    @purse = Purse.find(params[:id])
  end

  def update
    purse = Purse.find(params[:id])

    purse.assign_attributes(
                                    name: params[:name],
                                    price: params[:price],
                                    image: params[:image],
                                    description: params[:description]
                                    )
    purse.save
    flash[:success] = "Purse Successfully Updated"
    redirect_to "/purses/#{purse.id}"
  end

  def destroy
    purse = Purse.find(params[:id])
    purse.destroy

    flash[:warning] = "Purse Successfully Destroyed"
    redirect_to "/purses"
  end
  
  
end
