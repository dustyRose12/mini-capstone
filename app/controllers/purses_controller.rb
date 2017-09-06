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
  end

  def destroy
    purse = Purse.find(params[:id])
    purse.destroy
  end
  
  
end
