# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

City.create(abbr: "Atl", name: "Atlanta",          color: "blue",   connections: "Washington,Miami,Chicago")
City.create(abbr: "Chi", name: "Chicago",          color: "blue",   connections: "San Francisco,Montreal,Atlanta,Mexico City,Los Angeles")
City.create(abbr: "Ess", name: "Essen",            color: "blue",   connections: "St Petersburg,Milan,Paris,London")
City.create(abbr: "Lon", name: "London",           color: "blue",   connections: "Essen,Paris,Madrid,New York")
City.create(abbr: "Mad", name: "Madrid",           color: "blue",   connections: "Paris,Algiers,Sao Paulo,New York,London")
City.create(abbr: "Mil", name: "Milan",            color: "blue",   connections: "Istanbul,Paris,Essen")
City.create(abbr: "Mon", name: "Montreal",         color: "blue",   connections: "New York,Washington,Chicago")
City.create(abbr: "NeY", name: "New York",         color: "blue",   connections: "Madrid,Washington,Montreal,London")
City.create(abbr: "Par", name: "Paris",            color: "blue",   connections: "Essen,Milan,Madrid,London")
City.create(abbr: "SaF", name: "San Francisco",    color: "blue",   connections: "Manila,Tokyo,Chicago,Los Angeles")
City.create(abbr: "StP", name: "St Petersburg",    color: "blue",   connections: "Moscow,Istanbul,Essen")
City.create(abbr: "Was", name: "Washington",       color: "blue",   connections: "Miami,Atlanta,Montreal,New York")

City.create(abbr: "Bog", name: "Bogota",           color: "yellow", connections: "Buenos Aires,Lima,Mexico City,Miami,Sao Paulo")
City.create(abbr: "BuA", name: "Buenos Aires",     color: "yellow", connections: "Bogota,Sao Paulo") # +Johannesburg, +Santiago
City.create(abbr: "Joh", name: "Johannesburg",     color: "yellow", connections: "Kinshasa,Khartoum") # +Buenos Aires
City.create(abbr: "Kha", name: "Khartoum",         color: "yellow", connections: "Johannesburg,Lagos,Cairo")
City.create(abbr: "Kin", name: "Kinshasa",         color: "yellow", connections: "Johannesburg,Lagos")
City.create(abbr: "Lag", name: "Lagos",            color: "yellow", connections: "Khartoum,Kinshasa,Sao Paulo")
City.create(abbr: "Lim", name: "Lima",             color: "yellow", connections: "Santiago,Mexico City,Bogota") # +Los Angeles
City.create(abbr: "LoA", name: "Los Angeles",      color: "yellow", connections: "Sydney,San Francisco,Chicago,Mexico City") # +Lima
City.create(abbr: "Mex", name: "Mexico City",      color: "yellow", connections: "Lima,Los Angeles,Chicago,Miami,Bogota")
City.create(abbr: "Mia", name: "Miami",            color: "yellow", connections: "Bogota,Mexico City,Atlanta,Washington")
City.create(abbr: "San", name: "Santiago",         color: "yellow", connections: "Lima") # +Buenos Aires
City.create(abbr: "SaP", name: "Sao Paulo",        color: "yellow", connections: "Buenos Aires,Bogota,Madrid,Lagos")

City.create(abbr: "Alg", name: "Algiers",          color: "black",  connections: "Istanbul,Cairo,Madrid")
City.create(abbr: "Bag", name: "Baghdad",          color: "black",  connections: "Tehran,Karachi,Riyadh,Cairo,Istanbul") # -Karachi
City.create(abbr: "Cai", name: "Cairo",            color: "black",  connections: "Baghdad,Riyadh,Khartoum,Algiers,Istanbul")
City.create(abbr: "Che", name: "Chennai",          color: "black",  connections: "Delhi,Kolkata,Bangkok,Jakarta,Mumbai") # -Bangkok
City.create(abbr: "Del", name: "Delhi",            color: "black",  connections: "Kolkata,Chennai,Mumbai,Karachi,Tehran")
City.create(abbr: "Ist", name: "Istanbul",         color: "black",  connections: "Moscow,Baghdad,Cairo,Algiers,Milan,St Petersburg")
City.create(abbr: "Kar", name: "Karachi",          color: "black",  connections: "Tehran,Delhi,Mumbai,Riyadh,Baghdad") # -Baghdad
City.create(abbr: "Kol", name: "Kolkata",          color: "black",  connections: "Hong Kong,Bangkok,Chennai,Delhi")
City.create(abbr: "Mos", name: "Moscow",           color: "black",  connections: "Tehran,Istanbul,St Petersburg")
City.create(abbr: "Mum", name: "Mumbai",           color: "black",  connections: "Karachi,Delhi,Chennai")
City.create(abbr: "Riy", name: "Riyadh",           color: "black",  connections: "Baghdad,Karachi,Cairo")
City.create(abbr: "Teh", name: "Tehran",           color: "black",  connections: "Delhi,Karachi,Baghdad,Moscow")

City.create(abbr: "Ban", name: "Bangkok",          color: "red",    connections: "Kolkata,Hong Kong,Ho Chi Minh City,Jakarta,Chennai") # -Chennai
City.create(abbr: "Bei", name: "Beijing",          color: "red",    connections: "Seoul,Shanghai")
City.create(abbr: "HCM", name: "Ho Chi Minh City", color: "red",    connections: "Hong Kong,Manila,Jakarta,Bangkok")
City.create(abbr: "HoK", name: "Hong Kong",        color: "red",    connections: "Shanghai,Taipei,Manila,Ho Chi Minh City,Bangkok,Kolkata")
City.create(abbr: "Jak", name: "Jakarta",          color: "red",    connections: "Bangkok,Sydney,Chennai")
City.create(abbr: "Man", name: "Manila",           color: "red",    connections: "Taipei,San Francisco,Sydney,Ho Chi Minh City,Hong Kong")
City.create(abbr: "Osa", name: "Osaka",            color: "red",    connections: "Tokyo,Taipei")
City.create(abbr: "Seo", name: "Seoul",            color: "red",    connections: "Tokyo,Shanghai,Beijing")
City.create(abbr: "Sha", name: "Shanghai",         color: "red",    connections: "Seoul,Tokyo,Taipei,Hong Kong,Beijing")
City.create(abbr: "Syd", name: "Sydney",           color: "red",    connections: "Manila,Los Angeles,Jakarta")
City.create(abbr: "Tai", name: "Taipei",           color: "red",    connections: "Osaka,Manila,Hong Kong,Shanghai")
City.create(abbr: "Tok", name: "Tokyo",            color: "red",    connections: "San Francisco,Osaka,Shanghai,Seoul")

compact_grid = [
  %w(___ ___ Lon ___ Ess ___ ___),
  %w(Mon NeY Mad Par Mil StP ___),
  %w(Atl Was ___ Alg ___ Ist Mos),
  %w(___ ___ Lag ___ Cai ___ ___),
  %w(Mia SaP Kin Kha Riy Bag ___),
  %w(___ Bog BuA Joh Mum Kar Teh),
  %w(Mex Lim San Che ___ Del ___),
  %w(___ LoA Jak Ban Kol ___ Bei),
  %w(Chi ___ Syd HCM HoK Sha Seo),
  %w(___ SaF ___ Man Tai Osa Tok),
]

tall_grid = [
  %w(___ ___ ___ Ess ___ StP ___ ___),
  %w(___ ___ Lon Par Mil ___ ___ ___),
  %w(___ NeY Mad ___ Alg Ist ___ Mos),
  %w(Mon Was ___ Lag Kha Cai Bag ___),
  %w(Atl ___ SaP Kin Joh Riy Kar Teh),
  %w(___ Mia Bog BuA ___ Mum Del ___),
  %w(___ Mex Lim San Jak Che ___ ___),
  %w(Chi ___ LoA Syd HCM Ban Kol ___),
  %w(___ SaF ___ Man ___ HoK ___ ___),
  %w(___ ___ ___ Osa Tai ___ ___ ___),
  %w(___ ___ ___ Tok ___ Sha ___ ___),
  %w(___ ___ ___ ___ Seo Bei ___ ___),
]

tall_grid.each_with_index do |row, y|
  row.each_with_index do |abbr, x|
    city = City.find_by_abbr(abbr)
    next unless city
    city.update_attributes(x: x, y: y)
  end
end
if city = City.where(x: nil).or(City.where(y: nil)).first
  fail "Misplaced City: #{city.name}"
end

### Pandemic
Role.create(color: "52BBCE", name: "Contingency Planner")
Role.create(color: "D187A8", name: "Dispatcher")
Role.create(color: "E88F47", name: "Medic") # Alternate rules for Superbug Challenge (SOE)
Role.create(color: "7BBB66", name: "Operations Expert")
Role.create(color: "3D8769", name: "Quarantine Specialist")
Role.create(color: "AB835A", name: "Researcher") # Alternate rules for ITL Challenge (ITL)
Role.create(color: "CDD7D4", name: "Scientist")

### On the Brink
Role.create(color: "3476AC", name: "Archivist")
Role.create(color: "575958", name: "Bio-Terrorist") # Requires Bio-Terrorist Challenge
Role.create(color: "CFCAA5", name: "Containment Specialist")
Role.create(color: "D2B2A1", name: "Epidemiologist") # Alternate rules for ITL Challenge (ITL)
Role.create(color: "DFE170", name: "Field Operative")
Role.create(color: "99A1A0", name: "Generalist")
Role.create(color: "D6443C", name: "Troubleshooter")

### In the Lab
Role.create(color: "abcdef", name: "CDC")
Role.create(color: "97386F", name: "Field Director")
Role.create(color: "D6A0B1", name: "Local Liaison")
Role.create(color: "5DBBCE", name: "Pilot")
Role.create(color: "4AA574", name: "Virologist")

### State of Emergency
Role.create(color: "ffffff", name: "Colonel") # Requires Quarantines
Role.create(color: "ffffff", name: "First Responder")
Role.create(color: "ffffff", name: "Gene Splicer")
Role.create(color: "ffffff", name: "Pharmacist")
Role.create(color: "ffffff", name: "Veterinarian") # Requires Hinterlands Challenge


## dummy game
game = Game.create
game.players.create(city: City.find_by_name('Atlanta'), role: Role.find_by_name('Medic'))
game.players.create(city: City.find_by_name('Atlanta'), role: Role.find_by_name('Scientist'))
game.players.create(city: City.find_by_name('Atlanta'), role: Role.find_by_name('Dispatcher'))
game.start!

# Core game cards

City.all.each do |city|
  Card.create(card_type: "Infection", name: city.name)
end

City.all.each do |city|
  Card.create(card_type: "City", name: city.name)
end

Deck.create(game: game, name: "Infection", draw: Card.where(card_type: "Infection").map(&:id))
Deck.create(game: game, name: "Player", draw: Card.where(card_type: "City").map(&:id))

Card.create(card_type: "Epidemic", set: "Core", name: "Epidemic!")
Card.create(card_type: "Epidemic", set: "Core", name: "Epidemic!")
Card.create(card_type: "Epidemic", set: "Core", name: "Epidemic!")
Card.create(card_type: "Epidemic", set: "Core", name: "Epidemic!")
Card.create(card_type: "Epidemic", set: "Core", name: "Epidemic!")
Card.create(card_type: "Epidemic", set: "Core", name: "Epidemic!")

Card.create(card_type: "Event", set: "Core", name: "Airlift")
Card.create(card_type: "Event", set: "Core", name: "One Quiet Night")
Card.create(card_type: "Event", set: "Core", name: "Forecast")
Card.create(card_type: "Event", set: "Core", name: "Government Grant")
Card.create(card_type: "Event", set: "Core", name: "Resilient Population")

# On the Brink

# TODO: Mutation/Superbug, confirm In The Lab

Card.create(card_type: "Epidemic", set: "Virulent Strain", name: "Epidemic! Chronic Effect")
Card.create(card_type: "Epidemic", set: "Virulent Strain", name: "Epidemic! Complex Molecular Structure")
Card.create(card_type: "Epidemic", set: "Virulent Strain", name: "Epidemic! Government Interference")
Card.create(card_type: "Epidemic", set: "Virulent Strain", name: "Epidemic! Hidden Pocket")
Card.create(card_type: "Epidemic", set: "Virulent Strain", name: "Epidemic! Rate Effect")
Card.create(card_type: "Epidemic", set: "Virulent Strain", name: "Epidemic! Slippery Slope")
Card.create(card_type: "Epidemic", set: "Virulent Strain", name: "Epidemic! Unacceptable Loss")
Card.create(card_type: "Epidemic", set: "Virulent Strain", name: "Epidemic! Uncounted Populations")

Card.create(card_type: "Event", set: "OTB Events", name: "Commercial Travel Ban")
Card.create(card_type: "Event", set: "OTB Events", name: "Special Orders")
Card.create(card_type: "Event", set: "OTB Events", name: "Rapid Vaccine Deployment")
Card.create(card_type: "Event", set: "OTB Events", name: "Mobile Hospital")
Card.create(card_type: "Event", set: "OTB Events", name: "New Assignment")
Card.create(card_type: "Event", set: "OTB Events", name: "Borrowed Time")
Card.create(card_type: "Event", set: "OTB Events", name: "Re-Examined Research")
Card.create(card_type: "Event", set: "OTB Events", name: "Remote Treatment")

# In the Lab

Card.create(card_type: "Epidemic", set: "ITL Virulent Strain", name: "Epidemic! Resistant to Treatment")
Card.create(card_type: "Epidemic", set: "ITL Virulent Strain", name: "Epidemic! ??")

Card.create(card_type: "Event", set: "ITL Events", name: "Infection Zone Ban")
Card.create(card_type: "Event", set: "ITL Events", name: "Improved Sanitation")
Card.create(card_type: "Event", set: "ITL Events", name: "Sequencing Breakthroughs")

# State of Emergency

Card.create(card_type: "Event", set: "SOE Events", name: "Emergency Response")
Card.create(card_type: "Event", set: "SOE Events", name: "Advance Team")
Card.create(card_type: "Event", set: "SOE Events", name: "Local Initiative")
Card.create(card_type: "Event", set: "SOE Events", name: "Resource Planning")
Card.create(card_type: "Event", set: "SOE Events", name: "Sample Delivery")
Card.create(card_type: "Event", set: "SOE Events", name: "Emergency Conference")
Card.create(card_type: "Event", set: "SOE Events", name: "Infection Rumor")

Card.create(card_type: "Emergency Event", set: "Emergency Events", name: "CDC Planes Grounded")
Card.create(card_type: "Emergency Event", set: "Emergency Events", name: "Containment Failure")
Card.create(card_type: "Emergency Event", set: "Emergency Events", name: "Disease Hot Spot")
Card.create(card_type: "Emergency Event", set: "Emergency Events", name: "Disease Zones Expand")
Card.create(card_type: "Emergency Event", set: "Emergency Events", name: "Limited Options")
Card.create(card_type: "Emergency Event", set: "Emergency Events", name: "Logistics Failure")
Card.create(card_type: "Emergency Event", set: "Emergency Events", name: "Patient Zero")
Card.create(card_type: "Emergency Event", set: "Emergency Events", name: "Sanitation Breakdown")
Card.create(card_type: "Emergency Event", set: "Emergency Events", name: "Time Runs Out")
Card.create(card_type: "Emergency Event", set: "Emergency Events", name: "Widespread Panic")
