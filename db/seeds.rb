# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
User.create!({ id: 1, email: "ychen71@ncsu.edu", password:"12345678", password_confirmation: "12345678" })
User.create!({ id: 2, email: "example@zapserver.com", password:"12345678", password_confirmation: "12345678" })