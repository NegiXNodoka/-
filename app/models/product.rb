class Product < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true, numericality: true
  validates :stock, presence: true, numericality: true

  before_validation :load_defaults

  def load_defaults
  	if self.new_record?
  	  self.status = "pending"
    end 
  end
end
