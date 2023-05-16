class CreateExportBills < ActiveRecord::Migration[7.0]
  def change
    create_table :export_bills do |t|

      t.timestamps
    end
  end
end
