# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

russel = User.create!(name: 'Russel', email: 'asdf@gmail.com')
henry = User.create!(name: 'Henry', email: 'asdf@gmail.com')
karen = User.create!(name: 'Karen', email: 'asdf@gmail.com')
gary = User.create!(name: 'Gary', email: 'asdf@gmail.com')

