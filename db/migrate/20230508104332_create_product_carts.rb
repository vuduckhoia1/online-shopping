class CreateProductCarts < ActiveRecord::Migration[7.0]
  def change
    create_table :product_carts do |t|
      t.references :cart, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
