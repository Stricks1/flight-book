class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.references :plane, foreign_key: true
      t.references :dep_airport
      t.references :arr_airport
      t.datetime :dep_date
      t.datetime :arr_date
      t.timestamps
    end
  end
end
