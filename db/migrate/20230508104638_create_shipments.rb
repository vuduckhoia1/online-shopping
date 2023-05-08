class CreateShipments < ActiveRecord::Migration[7.0]
  def change
    create_table :shipments do |t|
      t.string :brand
      t.string :target_address
      t.string :email
      t.float :price

      t.timestamps
    end
  end
end
