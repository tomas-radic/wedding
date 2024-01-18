# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Creating users...'
if User.none?
  User.create!(email: 'michalbihary@gmail.com', password: 'wedding')
end

puts 'Creating invitations...'
if Invitation.none?
  Invitation.create!(name: 'Roger Federer')
  Invitation.create!(name: 'Grigor Dimitrov')
  Invitation.create!(name: 'Maria Sharapova')
  Invitation.create!(name: 'Anna Kalinskaya')
end

puts "\nDone.\n\n"
