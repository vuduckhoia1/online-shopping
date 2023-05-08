class CreateImportedProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :imported_products do |t|
      t.integer :quantity
      t.float :price
      t.references :product, null: false, foreign_key: true
      t.references :import_bill, null: false, foreign_key: true

      t.timestamps
    end
  end
end
