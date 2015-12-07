class CreateFoodItems < ActiveRecord::Migration
  def change
    create_table :food_items do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.string :section
      t.references :menu, index: true, foreign_key: true
      t.string :url

      t.timestamps null: false
    end
  end
end
