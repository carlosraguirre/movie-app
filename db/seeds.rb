# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# actor = Actor.new({first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock"})
# actor.save

# actor = Actor.new({first_name: "Chris", last_name: "Evans", known_for: "Fantastic Four: Rise of the Silver Surfer"})
# actor.save

# actor = Actor.new({first_name: "Pierce", last_name: "Brosnan", known_for: "Mamma Mia!"})
# actor.save

# actor = Actor.new({first_name: "Glenn", last_name: "Close", known_for: "Air Force One"})
# actor.save

# 10.times do
#   Actor.create(first_name: FFaker::Name.first_name, last_name: FFaker::Name.last_name, known_for: FFaker::Movie.title)
# end

movie = Movie.new({title: "Skyfall", year: 2012, plot: "England's best and most controversial spy fights a villian who's more than just a foe"})
movie.save

movie = Movie.new({title: "Interstellar", year: 2014, plot: "A man tries to save humanity while also trying to return to his daughter....but when?!"})
movie.save