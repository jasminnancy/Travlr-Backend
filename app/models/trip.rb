class Trip < ApplicationRecord
    belongs_to :user
    has_many :carryons
    has_many :luggages, through: :carryons
    has_many :transportations
    has_many :hotels
    has_many :events
    has_many :places
end
