class ExportedProduct < ApplicationRecord
  belongs_to :product
  belongs_to :export_bill
end
