class Location < ApplicationRecord
  has_many :ingredients

  def self.order_by_name
    order(:name)
  end

end
