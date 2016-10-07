class Ingredient < ApplicationRecord
  def self.order_by_name
    order(:name)
  end

  def self.order_by_date
    order(:date)
  end

  def self.order_by_category
    order(:category)
  end

  def self.order_by_location
    order(:location)
  end

  def is_expired?
    date < Date.now
  end

  def is_almost_expired?
    date < 7.days.from_now
  end
end
