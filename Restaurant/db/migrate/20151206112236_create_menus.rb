class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :section

      t.timestamps null: false
    end
  end
end
