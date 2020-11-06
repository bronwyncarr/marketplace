# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  title = Faker::Job.title
  description = Faker::Lorem.sentence(word_count: 20)
  hours = Faker::Number.between(from: 1, to: 10)
  date = Faker::Date.forward(days: 365)
  Task.create title: title, description: description, hours: hours, date: date
end
