class Product < ApplicationRecord
  belongs_to :category
  self.per_page = 3
end
