class AlcoolController < ApplicationController

  def index
  
  end

  def new
    @alcool = Alcool.new()
  end
  
  def create
    @alcool = Alcool.create(params[:manager])
    redirect_to alcools_path
    # if @stock.save
    #       redirect_to managers_path
    #     else
    #       render "new"
    #     end
  end
  
  def decrease(n)
    
  end
  
  def show
    @Alcool = Alcool.find(params[:id])
  end
  
  def increase(n)
    
  end
  
  def script
    
  end

end
