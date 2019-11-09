class User < ApplicationRecord
    has_many :trips
    has_many :luggages
    has_many :carryons, through: :trips
end
