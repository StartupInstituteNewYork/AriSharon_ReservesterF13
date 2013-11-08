class RestsController < ApplicationController
  def index
     @rests = Rest.all
  end

  def show
    @rest = Rest.find(params[:id])
  end

  def new
     @rest = Rest.new
    
  end

  def create
     @rest = Rest.new(rest_params)
     if @rest.save
      redirect_to root_url, notice: "#{@rest.name} was successfully created!"
     else
        render'new'
      end  
     #redirect_to @rest
  end

  def edit
    @rest = Rest.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private

  def rest_params
    params.require(:rest).permit(:name, :description, :address, :phone_number)
  end

end
