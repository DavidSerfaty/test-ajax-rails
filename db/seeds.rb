# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# 5.times do
#   Book.create(author: Faker::Book.author, title: Faker::Book.title)
# end
Email.destroy_all

3.times do
  Email.create(objet: Faker::Book.title, body: Faker::Lorem.paragraph_by_chars(number: 500, supplemental: false))
end
