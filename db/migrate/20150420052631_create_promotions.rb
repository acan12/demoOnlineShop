class CreatePromotions < ActiveRecord::Migration
  def change
    create_table :promotions do |t|
      t.string :name
      t.integer :discount
      t.string :expired_at
      
      t.timestamps null: false
    end
  end
end
