# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create name: 'Jean', status: :active, role: :manager, email: 'jeandgardany@hotmail.com', password: 123456
User.create name: 'Igor', status: :active, role: :salesman, email: 'igor@gmail.com', password: 123456
