# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  Address.create street_add: "120 Spenser street", suburb: 'Melbourne', state: "victoria", country: "Australia"
  Address.create street_add: "1 Elizabeth street", suburb: 'Melbourne', state: "victoria", country: "Australia"
  Address.create street_add: "10 Spring street", suburb: 'Melbourne', state: "victoria", country: "Australia"
  
10.times do
  title = Faker::Job.title
  summary = Faker::Lorem.sentence(word_count: 20)
  description = Faker::Lorem.sentence(word_count: 200)
  hours = Faker::Number.between(from: 1, to: 10)
  date = Faker::Date.forward(days: 365)
  charity_id = rand(1..5)
  address_id = rand(1..3)
  user_id = 1
  Task.create title: title, summary: summary, description: description, hours: hours, date: date, charity_id: charity_id, address_id: address_id, user_id: user_id
end

5.times do
  name = Faker::Job.title
  category = Faker::Lorem.word
  description = Faker::Lorem.sentence(word_count: 200)
  Charity.create name: name, category: category, description: description
end


50.times do
  task_id = rand(1..10)
  skill_id = rand(1..5)
  RequiredSkill.create task_id: task_id, skill_id: skill_id
end

5.times do
  name = Faker::Lorem.word
  Skill.create name: name
end


