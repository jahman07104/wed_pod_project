class NamesController < ApplicationController

  def index
    # will have a template in views .html file
    @names = Name.all
  end

  def show
   # will have a template in views
   #.html file
  end

  def new
    #display form for user
    # will have a template in views.html file
    @name = Name.new
  end

  def create
    #save new record
    # will not have a template in views
    #but will save and redirect
    @name = Name.new(allowed_params)
    if @name.save
      redirect_to names_path
    else
      render 'new'
    end
  end

  def edit
    #display form for existing record
  # will have a template in views.html file
  @name = Name.find(params[:id])
  end

  def update
    #update form for existing record
    # will save and redirect
    @name = Name.find(params[:id])
    if @name.update_attributes(allowed_params)
      redirect_to names_path
    else
      render 'new'
    end
  end

  def destroy
   # will destroy and redirect
   @name = Name.find(params[:id])
   @name.destroy
   redirect_to names_path
  end

  private 
  def allowed_params
    params.require(:name).permit(:name, :age, :phone_number, :address)

  end
    
  

end


