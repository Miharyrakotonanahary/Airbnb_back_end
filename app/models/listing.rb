class Listing < ApplicationRecord
	has_many :reservations, index: true
	
	validates :available_beds, 
		presence: true,
		unless available_beds>0
		end
	validates :price,
		presence: true
		unless price > 0 
		end
	validates :description, 
		presence :true,
		lenght: {minimum: 140}
	validates :welcome_message, presence:true	
end
