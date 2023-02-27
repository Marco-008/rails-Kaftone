# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Item.destroy_all

puts "Creating items..."
kaftan1 = {user_id: 1, title: "Kaftan YSL 1", description: "Lorem Ipsum",
  price: "1260 mad per day", location: "Casablanca", picture: "", review: "", color: "red" }
kaftan2 = {user_id: 1, title: "Kaftan YSL 2", description: "Lorem Ipsum",
  price: "1260 mad per day", location: "Casablanca", picture: "", review: "", color: "black" }
kaftan3 ={user_id: 1, title: "Kaftan YSL 3", description: "Lorem Ipsum",
  price: "1260 mad per day", location: "Casablanca", picture: "", review: "", color: "yellow" }

[kaftan1, kaftan2, kaftan3].each do |attributes|
  kaftan = Item.create!(attributes)
  puts "Created #{kaftan.title}"
end
puts "Finished!"
