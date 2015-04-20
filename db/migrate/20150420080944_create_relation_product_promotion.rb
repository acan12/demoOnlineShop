class CreateRelationProductPromotion < ActiveRecord::Migration
  def change
    create_table :products_promotions do |t|
      t.belongs_to :product, index: true
      t.belongs_to :promotion, index: true
    end
  end
end
