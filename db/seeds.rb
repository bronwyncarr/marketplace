# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
['general', 'organiser', 'admin'].each do |role|
  Role.find_or_create_by({name: role})
end

User.create({username: 'normal', email: 'a@test.com', password: '123456', password_confirmation: '123456', role_id: 1})
User.create({username: 'charity-person', email: 'b@test.com', password: '123456', password_confirmation: '123456', role_id: 2})
User.create({username: 'admin', email: 'c@test.com', password: '123456', password_confirmation: '123456', role_id: 3})


5.times do
  name = Faker::Lorem.word
  CharityKind.create name: name
end

5.times do
  name = Faker::Job.title
  charity_kind_id = rand(1..2)
  description = Faker::Lorem.sentence(word_count: 200)
  Charity.create name: name, description: description, charity_kind_id: charity_kind_id
end  

count = 0
5.times do
  user_id = rand(2..3)
  charity_id = count += 1
  Organiser.create({user_id: user_id, charity_id: charity_id})
end

10.times do
  title = Faker::Job.title
  summary = Faker::Lorem.sentence(word_count: 20)
  description = Faker::Lorem.sentence(word_count: 200)
  hours = Faker::Number.between(from: 1, to: 10)
  date = Faker::Date.forward(days: 365)
  charity_id = rand(1..5)
  user_id = rand(2..3)
  Task.create title: title, summary: summary, description: description, hours: hours, date: date, charity_id: charity_id, user_id: user_id
end  

count = 0
10.times do
  street_add = "1 Elizabeth street"
  suburb = 'Melbourne'
  state = "victoria"
  country = "Australia"
  task_id = count += 1
  Address.create street_add: street_add, suburb: suburb, state: state, country: country, task_id: task_id
end  

5.times do
  name = Faker::Lorem.word
  Skill.create name: name
end  

50.times do
  task_id = rand(1..10)
  skill_id = rand(1..5)
  RequiredSkill.create task_id: task_id, skill_id: skill_id
end  



