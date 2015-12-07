class FoodItem < ActiveRecord::Base
  belongs_to :menu
  has_many :orders

  validates :name, presence: true, uniqueness: true, length: {minimum: 2}
  validates :price, presence: true, numericality: {greater_than: 0 }
  validates :section, presence: true

  def self.searchByMenuSection(section)
    # where(:title, query) -> This would return an exact match of the query
    where("section = '#{section}'")
  end

end
