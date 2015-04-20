class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.string :name, index: true
      t.string :token, :limit => 100
      t.string :ccnumber
      t.integer :status, default: 0
      t.integer :quantity, default: 0
      t.integer :total, default: 0
      
      t.belongs_to :user, index: true
      t.belongs_to :bank, index: true

      t.timestamps null: false
    end
  end
end
