# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p spot = Spot.create!(
    name: "Western Sahara",
    skill_level: "beginner",
    disciplines: ["Windsurfing", "Kite surfing"],
    address: "Oued Ed-Dahab-Lagouira, 73000 Dakhla, Laâyoune-Boujdour-Sakia el Hamra",
    description: "super flat water"
)