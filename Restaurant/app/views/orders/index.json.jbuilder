json.array!(@orders) do |order|
  json.extract! order, :id, :name, :phone, :address, :email, :shipping_price, :discount_rate, :final_price, :food_item_id
  json.url order_url(order, format: :json)
end
