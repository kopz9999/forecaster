class Forecast < ApplicationRecord
  validates :street, :city, :state, :postal_code, presence: true
end
