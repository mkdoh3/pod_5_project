class User < ApplicationRecord
    has_many :bookings
    has_many :properties, through: :bookings
    has_secure_password
end
