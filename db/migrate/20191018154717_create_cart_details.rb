class CreateCartDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :cart_details do |t|

      t.references :product, foreign_key: true
      t.references :cart, foreign_key: true
      t.integer :quantity
      t.float :total

      t.timestamps
    end
  end
end
