class PursesController < ApplicationController

  before_action :authenticate_admin!, except: [:index, :show, :random]

  def index
    
    #to store cookies, see how many visitors, etc. sessions is a cookie.
    # if session[:count] == nil
    #   session[:count] = 0
    # end
    # session[:count] +=1
    # @counter = session[:count]

    @purses = Purse.all

    sort_attribute = params[:sort]
    order_attribute = params[:sort_order]
    discount_amount = params[:discount]
    category_sort = params[:category_id]

    search_term = params[:search_term]

    if category_sort 
      @purses = Category.find_by(id: category_sort).purses 
    end

    if discount_amount
      @purses = @purses.where("price < ?", discount_amount)
    end
   
    if sort_attribute && order_attribute
      @purses = @purses.order({sort_attribute =>  order_attribute}) #this makes it more dynamic, lets you type whatever value i.e, desc or asc into the order_attribute search bar, or any sort_attribute . have to break it apart into the hash rocket syntax, otherwise it won't work, as a symbol
    elsif sort_attribute
      @purses = @purses.order(sort_attribute)
    end

    if search_term
      @purses = @purses.where("name iLIKE ? OR description iLIKE ?", "%#{search_term}%" , "%#{search_term}%" )
    end

  end
    # if random
    #   @purses = @purses.order("RANDOM()").first(1)
      #active record queries also has a pluck method, that plucks one out product.find_by(product.all.pluck(:id).sample). you can write the method in the purse.rb file instead 
    # end

  def new
    # redirect_to "/" unless current_user && current_user.admin
    @suppliers = Supplier.all
  end


  def create 
    # redirect_to "/" unless current_user && current_user.admin #not needed anymore since we added the authenticate_admin method

    purse = Purse.new(
                                    name: params[:name],
                                    price: params[:price],
                                    description: params[:description],
                                    supplier_id: params[:supplier_id],
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
    # redirect_to "/" unless current_user && current_user.admin

    purse = Purse.find(params[:id])

    purse.assign_attributes(
                                    name: params[:name],
                                    price: params[:price],
                                    description: params[:description],
                                    supplier_id: params[:supplier_id]
                                    )
    purse.save
    flash[:success] = "Purse Successfully Updated"
    redirect_to "/purses/#{purse.id}"
  end

  def destroy
    # redirect_to "/" unless current_user && current_user.admin

    purse = Purse.find(params[:id])
    purse.destroy

    flash[:warning] = "Purse Successfully Destroyed"
    redirect_to "/purses"
  end

  def random #this is not needed if we just put the @purse = Purse.all.sample line up into the show method as an if / else. that way show method takes care of a param being "random"
    purse_id = Purse.all.sample.id
    redirect_to "/purses/#{purse_id}"
    #render "show.html.erb"
    #we are rendering the show page because random doesn't need its own view, the whole point was for random to point to a show page.
 end

  # if search_term
  #     @purses = @purses.where("name iLIKE ?", "%#{search_term}%")
  # end
  
  
end
