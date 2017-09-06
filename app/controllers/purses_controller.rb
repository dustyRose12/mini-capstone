class PursesController < ApplicationController

  def index
    @purses = Purse.all
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
