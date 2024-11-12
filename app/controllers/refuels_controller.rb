class RefuelsController < ApplicationController
  before_action :set_car

  def index
    @refuels = @car.refuels
  end

  def new
    @refuel = @car.refuels.build
  end

  def create
    @refuel = @car.refuels.build(refuel_params)
    if @refuel.save
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  def show
  end

  def edit
    @car = Car.find(params[:car_id])
    @refuel = @car.refuels.find(params[:id])
  end

  def update
    if @refuel.update(refuel_params)
      redirect_to car_path(@car)
    else
      render :edit
    end
  end

  def destroy
    @refuel.destroy
    redirect_to car_path(@car)
  end

  private

  def set_car
    @car = Car.find(params[:car_id])
  end

  def refuel_params
    params.require(:refuel).permit(:date, :km_driven, :liters)
  end
end
