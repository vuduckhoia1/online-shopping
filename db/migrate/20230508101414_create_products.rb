class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.text :des
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end

    add_index :products, :name
  end
end
