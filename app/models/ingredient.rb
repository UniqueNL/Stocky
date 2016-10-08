class Ingredient < ApplicationRecord
  belongs_to :category
  belongs_to :location

  validates :name, presence: true
  validates :amount, presence: true
  validates :expire, presence: true

  def self.order_by_name
    order(:name)
  end

  def self.order_by_date
    order(:date)
  end

  def self.order_by_category
    joins(:category).order('categories.name')
  end

  def self.order_by_location
    order(:location)
  end

  def is_expired?
    expire < Date.today
  end

  def is_almost_expired?
    date < 7.days.from_now
  end
end
