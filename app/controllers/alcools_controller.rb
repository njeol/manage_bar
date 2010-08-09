class AlcoolsController < ApplicationController

  def index
    @alcools = Alcool.all
  end

  def new
    @alcool = Alcool.new()
  end
  
  def update
    @alcool = Alcool.find(params[:id])
  end
  
  def create
    @alcool = Alcool.create(params[:alcool])
    if @alcool.save
      redirect_to alcools_path
    else
      render "new"
    end
  end
  
  def decrease(n)
    @alcool.quantity -= n
    redirect_to alcools_path
  end
  
  def show
    @alcool = Alcool.find(params[:id])
  end
  
  def increase(n)
    
  end
  
  def script
    
  end

end
