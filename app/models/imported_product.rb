class ImportedProduct < ApplicationRecord
  belongs_to :product
  belongs_to :import_bill
end
