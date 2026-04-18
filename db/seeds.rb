# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.destroy_all
Editor.destroy_all
Post.destroy_all

u1 = User.create(name: "Ali", email: "ali@mail.com")
u2 = User.create(name: "Omar", email: "omar@mail.com")

e1 = Editor.create(name: "Editor1", email: "e1@mail.com")
e2 = Editor.create(name: "Editor2", email: "e2@mail.com")

p1 = u1.created_posts.create(title: "Rails", body: "MVC post")
p2 = u2.created_posts.create(title: "Ruby", body: "Second post")

p1.editors << e1
p1.editors << e2