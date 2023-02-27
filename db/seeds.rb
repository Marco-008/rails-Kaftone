# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

items.destroy_all

10.times do
  Item.create({user_id: 1, title: "caftan YSL", description: "chic", price: "1000", location: "casa", picture:"", color: ""})
end
