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
kaftan1 = {user_id: 1, title: "Caftan beldi", description: "Lorem Ipsum",
  price: "1260 mad per day", location: "Casablanca", review: "", color: "🔴 Red", picture: 'https://images.unsplash.com/photo-1649109667872-f637a5c11a9e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80'}
kaftan2 = {user_id: 1, title: "Caftan Haute Couture", description: "Lorem Ipsum",
  price: "1260 mad per day", location: "Casablanca", review: "", color: "⚫️ Black", picture: 'https://images.unsplash.com/photo-1649109670237-31fcefbac2b6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80' }
kaftan3 ={user_id: 1, title: "Caftan chic", description: "Lorem Ipsum",
  price: "1260 mad per day", location: "Casablanca", review: "", color: " 🟡 Yellow", picture: 'https://images.unsplash.com/photo-1649109670220-b8f0cb14a29b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80' }

[kaftan1, kaftan2, kaftan3].each do |attributes|
  kaftan = Item.create!(attributes)
  puts "Created #{kaftan.title}"
end
puts "Finished!"
