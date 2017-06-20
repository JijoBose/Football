# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


10.times do
  Team.create([{
    name: Faker::Company.name
    }])
end

5.times do
  Venue.create([{
    location: Faker::Address.city
    }])
end

50.times do
  Player.create([{
    name: Faker::Name.name,
    team_id: rand(1..10)
    }])
end

20.times do
  Match.create([{
    title: Faker::Name.name,
    team1_id: rand(1..10),
    team2_id: rand(1..10),
    venue_id: rand(1..5),
    schedule: Faker::Date.forward(30)
    }])
end

rolerand = ["mid-forward", "goal keeper", "captain"]

20.times do
  Role.create([{
    match_id: rand(1..20),
    player_id: rand(1..20),
    name: rolerand[rand(0..2)]
    }])
end
=begin
5.times do
  Match.create([{
    title: Faker::name
    team1_id: rand(1..5)
    team2_id: rand(1..5)
    venue_id: rand(1..5)
    schedule:
    }])
end
=end
