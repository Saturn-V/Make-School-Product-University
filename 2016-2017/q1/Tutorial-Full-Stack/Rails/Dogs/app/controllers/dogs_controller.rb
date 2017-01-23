class DogsController < ApplicationController
  def index
      @dogs = Dog.all
  end

  def show
      @dog = Dog.find(params[:id])
  end

  def premiere
      @eDog = Dog.order(price_hr: :desc).first
  end

  def new
      @dog = Dog.new
  end

  def create
      dog_params = params.require(:dog).permit(:name, :breed, :price_hr)
      dog = Dog.create(dog_params)

      redirect_to dogs_path
  end
end
