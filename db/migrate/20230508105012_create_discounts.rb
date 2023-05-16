class CreateDiscounts < ActiveRecord::Migration[7.0]
  def change
    create_table :discounts do |t|
      t.string :name
      t.float :value
      t.integer :type
      t.date :day_start
      t.date :day_end

      t.timestamps
    end
  end
end
