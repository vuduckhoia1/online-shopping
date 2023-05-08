class CreateExportedProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :exported_products do |t|
      t.integer :quantity
      t.float :price
      t.references :product, null: false, foreign_key: true
      t.references :export_bill, null: false, foreign_key: true

      t.timestamps
    end
  end
end
