class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 } 
  validate :at_least_one_apparel

  def at_least_one_apparel
    unless mens_apparel or womens_apparel
      errors.add(:mens_apparel, "mens_apparel and womens_apparel can't be both false or nil") 
    end
  end
end
