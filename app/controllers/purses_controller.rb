class PursesController < ApplicationController

  # def one_purse_action
  #   @purse = Purse.first
  #   render 'one_purse_page.html.erb'
  # end

  # def all_purses_action
  #   @purses = Purse.all
  #   render 'all_purses_page.html.erb'
  # end

  def index
    @purses = Purse.all
  end

  def show
    @purse = Purse.find(params[:id])
  end
  
  
end
