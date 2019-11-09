class Carryon < ApplicationRecord
    belongs_to :trip
    belongs_to :luggage
end
