class Luggage < ApplicationRecord
    belongs_to :user
    has_many :carryons
    has_many :trips, through: :carryons
end
