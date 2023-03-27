# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

authors = Author.create([{first_name: "Sadhana", last_name: "Gopal"}, {first_name: "Narendran", last_name: "Subbaiah"}, {first_name: "Nethra", last_name: "Narendran"}])
blog_posts = BlogPost.create([{title: "My first blog post", body: "This is my first blog post", author_id: 15}, {title: "My second blog post", body: "This is my second blog post", author_id: 16}, {title: "My third blog post", body: "This is my third blog post", author_id: 17}])
