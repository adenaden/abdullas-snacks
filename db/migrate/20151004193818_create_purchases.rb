class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.string :product
      t.integer :paid
      t.integer :change

      t.timestamps null: false
    end
  end
end
