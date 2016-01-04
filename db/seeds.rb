# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


## Cities on the board

City.create(name: "London", y: 0, x: 2, color: "blue", connections: "Essen,Paris,Madrid,New York")
City.create(name: "Essen", y: 0, x: 4, color: "blue", connections: "St Petersburg,Milan,Paris,London")

City.create(name: "Montreal", y: 1, x: 0, color: "blue", connections: "New York,Washington,Chicago")
City.create(name: "New York", y: 1, x: 1, color: "blue", connections: "Madrid,Washington,Montreal,London")
City.create(name: "Madrid", y: 1, x: 2, color: "blue", connections: "Paris,Algiers,Sao Paulo,New York,London")
City.create(name: "Essen", y: 1, x: 3, color: "blue", connections: "Essen,Milan,Madrid,London")
City.create(name: "Milan", y: 1, x: 4, color: "blue", connections: "Istanbul,Paris,Essen")
City.create(name: "St Petersburg", y: 1, x: 5, color: "blue", connections: "Moscow,Istanbul,Essen")

City.create(name: "Atlanta", y: 2, x: 0, color: "blue", connections: "Washington,Miami,Chicago")
City.create(name: "Washington", y: 2, x: 1, color: "blue", connections: "Miami,Atlanta,Montreal,New York")
City.create(name: "Algiers", y: 2, x: 3, color: "black", connections: "Istanbul,Cairo,Madrid")
City.create(name: "Istanbul", y: 2, x: 5, color: "black", connections: "Moscow,Baghdad,Cairo,Algiers,Milan,St Petersburg")
City.create(name: "Moscow", y: 2, x: 6, color: "black", connections: "Tehran,Istanbul,St Petersburg")

City.create(name: "Lagos", y: 3, x: 2, color: "yellow", connections: "Khartoum,Kinshasa,Sao Paulo")
City.create(name: "Cairo", y: 3, x: 4, color: "black", connections: "Baghdad,Riyadh,Khartoum,Algiers,Istanbul")

City.create(name: "Miami", y: 4, x: 0, color: "yellow", connections: "Bogota,Mexico City,Atlanta,Washington")
City.create(name: "Sao Paulo", y: 4, x: 1, color: "yellow", connections: "Buenos Aires,Bogota,Madrid,Lagos")
City.create(name: "Kinshasa", y: 4, x: 2, color: "yellow", connections: "Johannesburg,Lagos")
City.create(name: "Khartoum", y: 4, x: 3, color: "yellow", connections: "Johannesburg,Lagos,Cairo")
City.create(name: "Riyadh", y: 4, x: 4, color: "black", connections: "Baghdad,Karachi,Cairo")
City.create(name: "Baghdad", y: 4, x: 5, color: "black", connections: "Tehran,Karachi,Riyadh,Cairo,Istanbul") # -Karachi

City.create(name: "Bogota", y: 5, x: 1, color: "yellow", connections: "Buenos Aires,Lima,Mexico City,Miami,Sao Paulo")
City.create(name: "Buenos Aires", y: 5, x: 2, color: "yellow", connections: "Bogota,Sao Paulo") # +Johannesburg, +Santiago
City.create(name: "Johannesburg", y: 5, x: 3, color: "yellow", connections: "Kinshasa,Khartoum") # +Buenos Aires
City.create(name: "Mumbai", y: 5, x: 4, color: "black", connections: "Karachi,Delhi,Chennai")
City.create(name: "Karachi", y: 5, x: 5, color: "black", connections: "Tehran,Delhi,Mumbai,Riyadh,Baghdad") # -Baghdad
City.create(name: "Tehran", y: 5, x: 6, color: "black", connections: "Delhi,Karachi,Baghdad,Moscow")

City.create(name: "Mexico City", y: 6, x: 0, color: "yellow", connections: "Lima,Los Angeles,Chicago,Miami,Bogota")
City.create(name: "Lima", y: 6, x: 1, color: "yellow", connections: "Santiago,Mexico City,Bogota") # +Los Angeles
City.create(name: "Santiago", y: 6, x: 2, color: "yellow", connections: "Lima") # +Buenos Aires
City.create(name: "Chennai", y: 6, x: 3, color: "black", connections: "Delhi,Kolkata,Bangkok,Jakarta,Mumbai") # -Bangkok
City.create(name: "Delhi", y: 6, x: 5, color: "black", connections: "Kolkata,Chennai,Mumbai,Karachi,Tehran")

City.create(name: "Los Angeles", y: 7, x: 1, color: "yellow", connections: "Sydney,San Francisco,Chicago,Mexico City") # +Lima
City.create(name: "Jakarta", y: 7, x: 2, color: "red", connections: "Bangkok,Sydney,Chennai")
City.create(name: "Bangkok", y: 7, x: 3, color: "red", connections: "Kolkata,Hong Kong,Ho Chi Minh City,Jakarta,Chennai") # -Chennai
City.create(name: "Kolkata", y: 7, x: 4, color: "black", connections: "Hong Kong,Bangkok,Chennai,Delhi")
City.create(name: "Beijing", y: 7, x: 6, color: "red", connections: "Seoul,Shanghai")

City.create(name: "Chicago", y: 8, x: 0, color: "blue", connections: "San Francisco,Montreal,Atlanta,Mexico City,Los Angeles")
City.create(name: "Sydney", y: 8, x: 2, color: "red", connections: "Manila,Los Angeles,Jakarta")
City.create(name: "Ho Chi Minh City", y: 8, x: 3, color: "red", connections: "Hong Kong,Manila,Jakarta,Bangkok")
City.create(name: "Hong Kong", y: 8, x: 4, color: "red", connections: "Shanghai,Taipei,Manila,Ho Chi Minh City,Bangkok,Kolkata")
City.create(name: "Shanghai", y: 8, x: 5, color: "red", connections: "Seoul,Tokyo,Taipei,Hong Kong,Beijing")
City.create(name: "Seoul", y: 8, x: 6, color: "red", connections: "Tokyo,Shanghai,Beijing")

City.create(name: "San Fancisco", y: 9, x: 1, color: "blue", connections: "Manila,Tokyo,Chicago,Los Angeles")
City.create(name: "Manila", y: 9, x: 3, color: "red", connections: "Taipei,San Francisco,Sydney,Ho Chi Minh City,Hong Kong")
City.create(name: "Taipei", y: 9, x: 4, color: "red", connections: "Osaka,Manila,Hong Kong,Shanghai")
City.create(name: "Osaka", y: 9, x: 5, color: "red", connections: "Tokyo,Taipei")
City.create(name: "Tokyo", y: 9, x: 6, color: "red", connections: "San Francisco,Osaka,Shanghai,Seoul")

## Roles

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

## Players

# dummy game, for demos
Player.create(x: 0, y: 2, role: Role.find_by_name('Medic'))
Player.create(x: 0, y: 2, role: Role.find_by_name('Scientist'))
Player.create(x: 0, y: 2, role: Role.find_by_name('Dispatcher'))
