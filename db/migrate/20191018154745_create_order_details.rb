class CreateOrderDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :order_details do |t|

      t.references :order, foreing_key: true
      t.references :product, foreing_key: true
      t.integer :quantity
      t.float :total

      t.timestamps
    end
  end
end
