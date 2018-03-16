# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

30.times do
  Boat.create!( name: Faker::Ancient.god,
                description: Faker::Lorem.paragraph,
                length: "#{rand(2..10)} метров",
                width: "#{rand(2..5)} метров",
                height: "#{rand(50..1500)} мм",
                carrying: "#{rand(100..1000)} кг",
                passengers: "#{rand(2..10)} человек",
                weight: "#{rand(100..1000)} кг",
                madein: Faker::Coffee.origin,
                engine: Faker::Vehicle.manufacture,
                brand_id: rand(0..10),
                type_id: rand(0..6))
end

10.times do
  Brand.create!(name: Faker::Company.name)
end

Type.create!(name: "ПВХ")
Type.create!(name: "Моторные лодки")
Type.create!(name: "Катера")
Type.create!(name: "Гидроциклы")
Type.create!(name: "Гребные")
Type.create!(name: "Моторы")
