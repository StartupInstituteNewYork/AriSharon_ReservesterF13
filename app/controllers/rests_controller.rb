class RestsController < ApplicationController
  #before_action :authenticate_owner!, only: [:new, :create, :edit, :update, :destroy]
  #before_action :confirm_ownership, only: [:edit, :update, :destroy]

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
    # @rest = Rest.new(rest_params)
    
      @rest = current_owner.rests.build(rest_params)
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
    @rest = Rest.find(params[:id])
 
    #if @rest.update(params[:rest].permit(:name, :description, :address))
       if @rest.update(rest_params)
          redirect_to @rest
        else
          render 'edit'
    end
  end

  def destroy
    @rest = Rest.find(params[:id])
    @rest.destroy
    redirect_to root_url, alert: "#{@rest.name} was successfully deleted!"
  end

  private

  def rest_params
    params.require(:rest).permit(:name, :description, :address, :phone_number)
  end

end
