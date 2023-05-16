class CreateSuppliers < ActiveRecord::Migration[7.0]
  def change
    create_table :suppliers do |t|
      t.string :brand, null: false
      t.string :address
      t.string :tel, null: false
      t.string :email, null: false
      t.timestamps
    end

    add_index :suppliers, :brand, unique: true
  end
end
