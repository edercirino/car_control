class CarsController < ApplicationController
  before_action :set_car, only: [ :show, :edit, :update, :destroy ]

  def index
    @cars = Car.all
  end

  def show
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      redirect_to @car
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @car.update(car_params)
      redirect_to @car
    else
      render :edit
    end
  end

  def destroy
    @car.destroy
    redirect_to root_path
  end

  private
  def set_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car). permit(:name, :plate)
  end
end
