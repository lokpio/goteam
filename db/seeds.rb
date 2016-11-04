addresses = [
        {street: '1515 Sutter St', city: 'San Francisco', state: 'CA', zip: '94109'},
        {street: '332 17th Ave', city: 'San Francisco', state: 'CA', zip: '94121'},
        {street: '138 Palm Avenue', city: 'San Francisco', state: 'CA', zip: '94118'},
        {street: '2775 Union Street', city: 'San Francisco', state: 'CA', zip: '94123'},
        {street: '475 Belvedere Street', city: 'San Francisco', state: 'CA', zip: '94117'},
        {street: '3975 20th Street', city: 'San Francisco', state: 'CA', zip: '94114'},
        {street: '1979 Fairbanks Street', city: 'San Leandro', state: 'CA', zip: '94577'},
        {street: '2092 W Ave 133rd', city: 'San Leandro', state: 'CA', zip: '94577'},
        {street: '1481 9th St', city: 'Oakland', state: 'CA', zip: '94607'},
        {street: '1098 Sutter St', city: 'San Francisco', state: "CA", zip: "94109"}

        ]

# 10 Addresses = 10 Users
addresses.each do |address|
  User.create(first_name: Faker::Name.first_name,
              last_name: Faker::Name.last_name,
              street: address[:street],
              city: address[:city],
              state: address[:state],
              zip: address[:zip],
              email: Faker::Internet.email,
              phone: Faker::PhoneNumber.phone_number,
              password: "password",
              active: true
              )
end

sports = { tennis_singles: 2,
          tennis_doubles: 4,
          soccer: 22
        }

sports.each do |sport, total_players|
  Sport.create(name: sport,
               total_players: total_players
              )
end

2.times do
  Match.create(location: '123 Main St SF, CA',
                     date: "2016-11-12 15:00")
end

4.times do |num|
  Team.create(
    sport_id: rand(1..2),
    match_id:rand(1..2),
    season: "Fall 2016",
    score: 2
    )
end






