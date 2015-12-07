class Order < ActiveRecord::Base
  belongs_to :food_item

  validates :name, presence: true, length: {minimum: 2}
  validates :phone, presence: true, numericality: {greater_than: 0 }
  validates :address, presence: true

  def self.searchByFoodItemId(foodItemId)
    # where(:title, query) -> This would return an exact match of the query
    where("food_item_id = #{foodItemId}")
  end

end
