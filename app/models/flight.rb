class Flight < ApplicationRecord
    belongs_to :dep_airport, :class_name => 'Airport'
    belongs_to :arr_airport, :class_name => 'Airport'
    belongs_to :plane
    has_many :airports
    has_many :plane_books, dependent: :destroy
end
