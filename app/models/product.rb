class Product < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true, numericality: true
  validates :description, presence: true
  validates :stock, presence: true, numericality: true

  before_validation :load_defaults

  def load_defaults
  end
end
