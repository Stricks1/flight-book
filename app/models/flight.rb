class Flight < ApplicationRecord
    belongs_to :dep_airport, :class_name => 'Airport'
    belongs_to :arr_airport, :class_name => 'Airport'
    belongs_to :plane
    has_many :airports
    has_many :plane_books, dependent: :destroy

    def flights_search(dep, arr)
        Flight.find_by_sql("SELECT * FROM flights WHERE dep_airport_id = #{dep} AND arr_airport_id = #{arr}")
    end

end
