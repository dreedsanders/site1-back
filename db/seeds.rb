# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Product.delete_all
Product.create!(title: 'Moontower Pin', description: %{<p> <em> Moontower Pin </em> Look at this shiny new pin </p>},
                image_url: 'https://images.squarespace-cdn.com/content/v1/51d84a32e4b03fbe9da9ad87/1605907013757-6YDTL535IABZX91RZFR5/MT1+web.jpg?format=1000w

', price: 10.00)