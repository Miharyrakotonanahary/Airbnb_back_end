class City < ApplicationRecord
	t.has_many :listings

	validates :name, presence: true
	validates :zip_code,
		presence: true,
		uniqueness: true
end
