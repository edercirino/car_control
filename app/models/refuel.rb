class Refuel < ApplicationRecord
  belongs_to :car

  before_save :car_average

  def car_average
    if km_driven && liters && liters > 0
      self.km_per_liter = km_driven / liters.to_f
    else
      self.km_per_liter = 0
    end
  end
end
