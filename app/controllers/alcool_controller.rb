class AlcoolController < ApplicationController

  def index
    @alcools = Alcool.all
  end

  def new
    @alcool = Alcool.new()
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
    
  end
  
  def show
    @alcool = Alcool.find(params[:id])
  end
  
  def increase(n)
    
  end
  
  def script
    
  end

end
