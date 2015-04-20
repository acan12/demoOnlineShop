class CreateRelationProductAndPayment < ActiveRecord::Migration
  def change
    create_table :payments_products, id: false do |t|
      t.belongs_to :product, index: true
      t.belongs_to :payment, index: true
    end
  end
end
