class Trip < ApplicationRecord
    belongs_to :luggage
    has_many :transportations
    has_many :hotels
    has_many :events
    has_many :places
end
