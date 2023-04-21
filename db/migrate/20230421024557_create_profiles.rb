class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :tel
      t.string :address
      t.date :dob
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
