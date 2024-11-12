class Car < ApplicationRecord
  has_many :refuels, dependent: :destroy
end
