# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Flight.destroy_all
PlaneBook.destroy_all
Plane.destroy_all
Airport.destroy_all


User.create!([{
    email: "g@mail.com",
    name: "Gabriel",
    username: "Stricks",
    password: 123456
  },
  {
    email: "r@mail.com",
    name: "Rick",
    username: "Woohoo",
    password: 123456
  }])

p "Created #{User.count} users"

Plane.create!([{
    name: "XPT1",
    model: "AIRBUSA350",
    aq_date: Date.yesterday
  },
  {
    name: "XPT2",
    model: "AIRBUSA350",
    aq_date: Date.today
  },
  {
    name: "XPT3",
    model: "BOEING787",
    aq_date: Date.yesterday
  },
  {
    name: "XPT4",
    model: "AIRBUSA330",
    aq_date: Date.today
  },
  {
    name: "XPT5",
    model: "AIRBUSA330",
    aq_date: Date.yesterday
  }])

p "Created #{Plane.count} planes"


Airport.create!([{
    name: "BSB",
    location: "Brasilia, Brazil"
  },
  {
    name: "GIG",
    location: "Rio de Janeiro, Brazil"
  },
  {
    name: "FLN",
    location: "Florianopolis, Brazil"
  },
  {
    name: "JFK",
    location: "New York, USA"
  },
  {
    name: "MUC",
    location: "Munich, Germany"
  }])

p "Created #{Airport.count} airports"


Flight.create!([{
    plane_id: 1,
    dep_airport_id: 3,
    arr_airport_id: 2,
    dep_date: DateTime.new(2020, 8, 29, 9, 30, 0),
    arr_date: DateTime.new(2020, 8, 29, 11, 35, 0)
  },
  {
    plane_id: 3,
    dep_airport_id: 3,
    arr_airport_id: 2,
    dep_date: DateTime.new(2020, 8, 29, 22, 30, 0),
    arr_date: DateTime.new(2020, 8, 30, 03, 15, 0)
  }])

p "Created #{Flight.count} flights"


PlaneBook.create!([{
    user_id: 1,
    flight_id: 1
  },
  {
    user_id: 2,
    flight_id: 1
  }])

p "Created #{PlaneBook.count} PlaneBooks"