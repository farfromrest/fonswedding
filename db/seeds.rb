# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
derek = Guest.create(first_name: 'Derek', last_name: 'Fons')
john = Guest.create(first_name: 'John', last_name: 'Doe')
jane = Guest.create(first_name: 'Jane', last_name: 'Doe', guest: john)
john.guest = jane
john.save
