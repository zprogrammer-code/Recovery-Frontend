# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Locations
glenwood = Location.create(city: "Glenwood Springs")
pagosa = Location.create(city: "Pagosa Springs")
buena = Location.create(city: "Buena Vista")

# Rests
# Rest.create(
#     name: "Pagosa Springs Resort and Spa",
#     type: "Resort hotel",
#     capacity: 79,
#     location: pagosa)

#Relaxes
sheep_creek = Relax.create(name: "Sheep Creek Hot Springs",
    capacity: 12,
    vibe: "Accessability comes with a price. It has more of a party atmosphere at night which can lead to a messy location in the morning.",
    location: pagosa)
rainbow = Relax.create( name: "Rainbow Hot Springs",
    capacity: 5,
    vibe: "Secluded, natural, primitive setting. Clothing optional. Wilflife sightings. Lots of campers",
    location: pagosa)

#Recoveries
# Recovery.create(name:
#     activity:
#     activity_level:
#     cost:
#     location:)