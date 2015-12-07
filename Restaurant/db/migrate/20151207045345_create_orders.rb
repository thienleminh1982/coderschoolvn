class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.string :phone
      t.text :address
      t.string :email
      t.decimal :shipping_price
      t.integer :discount_rate
      t.decimal :final_price
      t.references :food_item, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
