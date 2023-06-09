class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :type, null: false

      t.timestamps
    end

    add_index :categories, :type, unique: true
  end
end
