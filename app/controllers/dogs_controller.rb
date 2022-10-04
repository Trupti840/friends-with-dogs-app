class DogsController < ApplicationController
 def index
   @dogs = Dog.all
end

   def show
    @dog = Dog.find(params[:id])
  end


  def new
  	@dog=Dog.new 
  end
  
  def edit
  end

   def create
    dog = Dog.create(dog_params)

    redirect_to dogs_path(@dog)
  end
  def update
    @dog.update(dog_params)

    redirect_to dog_path(@dog)
  end

  def destroy
    @dog.destroy

    redirect_to dogs_path
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :motto)
  end
  def current_dog
        @dog = Dog.find(params[:id])
      end
end
