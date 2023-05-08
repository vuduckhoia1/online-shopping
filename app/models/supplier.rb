class Supplier < ApplicationRecord
	before_save { self.brand = brand.upcase }
	validates :brand, presence: true, length: { maximum: 20 }, uniqueness: true
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX },
						:uniqueness: true
end
