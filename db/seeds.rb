# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

City.create(name: "Atlanta",          color: "blue",   connections: "Washington,Miami,Chicago")
City.create(name: "Chicago",          color: "blue",   connections: "San Francisco,Montreal,Atlanta,Mexico City,Los Angeles")
City.create(name: "Essen",            color: "blue",   connections: "St Petersburg,Milan,Paris,London")
City.create(name: "London",           color: "blue",   connections: "Essen,Paris,Madrid,New York")
City.create(name: "Madrid",           color: "blue",   connections: "Paris,Algiers,Sao Paulo,New York,London")
City.create(name: "Milan",            color: "blue",   connections: "Istanbul,Paris,Essen")
City.create(name: "Montreal",         color: "blue",   connections: "New York,Washington,Chicago")
City.create(name: "New York",         color: "blue",   connections: "Madrid,Washington,Montreal,London")
City.create(name: "Paris",            color: "blue",   connections: "Essen,Milan,Madrid,London")
City.create(name: "San Francisco",    color: "blue",   connections: "Manila,Tokyo,Chicago,Los Angeles")
City.create(name: "St Petersburg",    color: "blue",   connections: "Moscow,Istanbul,Essen")
City.create(name: "Washington",       color: "blue",   connections: "Miami,Atlanta,Montreal,New York")

City.create(name: "Bogota",           color: "yellow", connections: "Buenos Aires,Lima,Mexico City,Miami,Sao Paulo")
City.create(name: "Buenos Aires",     color: "yellow", connections: "Bogota,Sao Paulo") # +Johannesburg, +Santiago
City.create(name: "Johannesburg",     color: "yellow", connections: "Kinshasa,Khartoum") # +Buenos Aires
City.create(name: "Khartoum",         color: "yellow", connections: "Johannesburg,Lagos,Cairo")
City.create(name: "Kinshasa",         color: "yellow", connections: "Johannesburg,Lagos")
City.create(name: "Lagos",            color: "yellow", connections: "Khartoum,Kinshasa,Sao Paulo")
City.create(name: "Lima",             color: "yellow", connections: "Santiago,Mexico City,Bogota") # +Los Angeles
City.create(name: "Los Angeles",      color: "yellow", connections: "Sydney,San Francisco,Chicago,Mexico City") # +Lima
City.create(name: "Mexico City",      color: "yellow", connections: "Lima,Los Angeles,Chicago,Miami,Bogota")
City.create(name: "Miami",            color: "yellow", connections: "Bogota,Mexico City,Atlanta,Washington")
City.create(name: "Santiago",         color: "yellow", connections: "Lima") # +Buenos Aires
City.create(name: "Sao Paulo",        color: "yellow", connections: "Buenos Aires,Bogota,Madrid,Lagos")

City.create(name: "Algiers",          color: "black",  connections: "Istanbul,Cairo,Madrid")
City.create(name: "Baghdad",          color: "black",  connections: "Tehran,Karachi,Riyadh,Cairo,Istanbul") # -Karachi
City.create(name: "Cairo",            color: "black",  connections: "Baghdad,Riyadh,Khartoum,Algiers,Istanbul")
City.create(name: "Chennai",          color: "black",  connections: "Delhi,Kolkata,Bangkok,Jakarta,Mumbai") # -Bangkok
City.create(name: "Delhi",            color: "black",  connections: "Kolkata,Chennai,Mumbai,Karachi,Tehran")
City.create(name: "Istanbul",         color: "black",  connections: "Moscow,Baghdad,Cairo,Algiers,Milan,St Petersburg")
City.create(name: "Karachi",          color: "black",  connections: "Tehran,Delhi,Mumbai,Riyadh,Baghdad") # -Baghdad
City.create(name: "Kolkata",          color: "black",  connections: "Hong Kong,Bangkok,Chennai,Delhi")
City.create(name: "Moscow",           color: "black",  connections: "Tehran,Istanbul,St Petersburg")
City.create(name: "Mumbai",           color: "black",  connections: "Karachi,Delhi,Chennai")
City.create(name: "Riyadh",           color: "black",  connections: "Baghdad,Karachi,Cairo")
City.create(name: "Tehran",           color: "black",  connections: "Delhi,Karachi,Baghdad,Moscow")

City.create(name: "Bangkok",          color: "red",    connections: "Kolkata,Hong Kong,Ho Chi Minh City,Jakarta,Chennai") # -Chennai
City.create(name: "Beijing",          color: "red",    connections: "Seoul,Shanghai")
City.create(name: "Ho Chi Minh City", color: "red",    connections: "Hong Kong,Manila,Jakarta,Bangkok")
City.create(name: "Hong Kong",        color: "red",    connections: "Shanghai,Taipei,Manila,Ho Chi Minh City,Bangkok,Kolkata")
City.create(name: "Jakarta",          color: "red",    connections: "Bangkok,Sydney,Chennai")
City.create(name: "Manila",           color: "red",    connections: "Taipei,San Francisco,Sydney,Ho Chi Minh City,Hong Kong")
City.create(name: "Osaka",            color: "red",    connections: "Tokyo,Taipei")
City.create(name: "Seoul",            color: "red",    connections: "Tokyo,Shanghai,Beijing")
City.create(name: "Shanghai",         color: "red",    connections: "Seoul,Tokyo,Taipei,Hong Kong,Beijing")
City.create(name: "Sydney",           color: "red",    connections: "Manila,Los Angeles,Jakarta")
City.create(name: "Taipei",           color: "red",    connections: "Osaka,Manila,Hong Kong,Shanghai")
City.create(name: "Tokyo",            color: "red",    connections: "San Francisco,Osaka,Shanghai,Seoul")

compact_grid = [
  [nil, nil, "London", nil, "Essen"],
  ["Montreal", "New York", "Madrid", "Paris", "Milan", "St Petersburg"],
  ["Atlanta", "Washington", nil, "Algiers", nil, "Istanbul", "Moscow"],
  [nil, nil, "Lagos", nil, "Cairo"],
  ["Miami", "Sao Paulo", "Kinshasa", "Khartoum", "Riyadh", "Baghdad"],
  [nil, "Bogota", "Buenos Aires", "Johannesburg", "Mumbai", "Karachi", "Tehran"],
  ["Mexico City", "Lima", "Santiago", "Chennai", nil, "Delhi"],
  [nil, "Los Angeles", "Jakarta", "Bangkok", "Kolkata", nil, "Beijing"],
  ["Chicago", nil, "Sydney", "Ho Chi Minh City", "Hong Kong", "Shanghai", "Seoul"],
  [nil, "San Francisco", nil, "Manila", "Taipei", "Osaka", "Tokyo"],
]

tall_grid = [
  [nil, nil, nil, "Essen", nil, "St Petersburg"],
  [nil, nil, "London", "Paris", "Milan"],
  [nil, "New York", "Madrid", nil, "Algiers", "Istanbul", nil, "Moscow"],
  ["Montreal", "Washington", nil, "Lagos", "Khartoum", "Cairo", "Baghdad"],
  ["Atlanta", nil, "Sao Paulo", "Kinshasa", "Johannesburg", "Riyadh", "Karachi", "Tehran"],
  [nil, "Miami", "Bogota", "Buenos Aires", nil, "Mumbai", "Delhi"],
  [nil, "Mexico City", "Lima", "Santiago", "Jakarta", "Chennai"],
  ["Chicago", nil, "Los Angeles", "Sydney", "Ho Chi Minh City", "Bangkok", "Kolkata"],
  [nil, "San Francisco", nil, "Manila", nil, "Hong Kong"],
  [nil, nil, nil, "Osaka", "Taipei"],
  [nil, nil, nil, "Tokyo", nil, "Shanghai"],
  [nil, nil, nil, nil, "Seoul", "Beijing"],
]

tall_grid.each_with_index do |row, y|
  row.each_with_index do |name, x|
    next unless name
    City.find_by_name(name).update_attributes(x: x, y: y)
  end
end

### Pandemic
Role.create(name: "Contingency Planner")
Role.create(name: "Dispatcher")
Role.create(name: "Medic") # Alternate rules for Superbug Challenge (SOE)
Role.create(name: "Operations Expert")
Role.create(name: "Quarantine Specialist")
Role.create(name: "Researcher") # Alternate rules for ITL Challenge (ITL)
Role.create(name: "Scientist")

### On the Brink
Role.create(name: "Archivist")
Role.create(name: "Bio-Terrorist") # Requires Bio-Terrorist Challenge
Role.create(name: "Containment Specialist")
Role.create(name: "Epidemiologist") # Alternate rules for ITL Challenge (ITL)
Role.create(name: "Field Operative")
Role.create(name: "Generalist")
Role.create(name: "Troubleshooter")

### In the Lab
Role.create(name: "Field Director")
Role.create(name: "Local Liaison")
Role.create(name: "Pilot")
Role.create(name: "Virologist")

### State of Emergency
Role.create(name: "Colonel") # Requires Quarantines
Role.create(name: "First Responder")
Role.create(name: "Gene Splicer")
Role.create(name: "Pharmacist")
Role.create(name: "Veterinarian") # Requires Hinterlands Challenge


## dummy game
game = Game.create
game.players.create(city: City.find_by_name('Atlanta'), role: Role.find_by_name('Medic'))
game.players.create(city: City.find_by_name('Atlanta'), role: Role.find_by_name('Scientist'))
game.players.create(city: City.find_by_name('Atlanta'), role: Role.find_by_name('Dispatcher'))
game.start!
