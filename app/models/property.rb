class Property < ApplicationRecord
    has_many :bookings
    has_many :users, through: :bookings
    validates :address, presence: true
    def full_address
        "#{self.address}, #{self.city}, #{self.state}" 
    end
end
