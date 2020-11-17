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
User.create({username: 'charity-person', email: 'd@test.com', password: '123456', password_confirmation: '123456', role_id: 2})
User.create({username: 'normal', email: 'e@test.com', password: '123456', password_confirmation: '123456', role_id: 1})

CharityKind.create({name: 'Environmental'})
CharityKind.create({name: 'Social Welfare'})
CharityKind.create({name: 'Educational'})
CharityKind.create({name: 'Community Group'})
CharityKind.create({name: 'Animal'})


Charity.create({name: 'Banyule Animal Shelter', description: Faker::Lorem.sentence(word_count: 200), charity_kind_id: 5})
Charity.create({name: 'Tutoring Service', description: Faker::Lorem.sentence(word_count: 200), charity_kind_id: 3})
Charity.create({name: 'Yarra Park Preservation', description: Faker::Lorem.sentence(word_count: 200), charity_kind_id: 1})
Charity.create({name: 'Foodbank', description: Faker::Lorem.sentence(word_count: 200), charity_kind_id: 2})
Charity.create({name: 'Banyule Community gardens', description: Faker::Lorem.sentence(word_count: 200), charity_kind_id: 4})
Charity.create({name: 'Neighbourhood House', description: Faker::Lorem.sentence(word_count: 200), charity_kind_id: 4})
Charity.create({name: 'Salvos', description: Faker::Lorem.sentence(word_count: 200), charity_kind_id: 2})
Charity.create({name: 'St Vincent de Paul', description: Faker::Lorem.sentence(word_count: 200), charity_kind_id: 2})

# 5.times do
#   name = Faker::Job.title
#   charity_kind_id = rand(1..2)
#   description = Faker::Lorem.sentence(word_count: 200)
#   Charity.create name: name, description: description, charity_kind_id: charity_kind_id
# end  

count = 0
8.times do
  user_id = rand(2..3)
  charity_id = count += 1
  Organiser.create({user_id: user_id, charity_id: charity_id})
end

# 10.times do
#   title = Faker::Job.title
#   summary = Faker::Lorem.sentence(word_count: 20)
#   description = Faker::Lorem.sentence(word_count: 200)
#   hours = Faker::Number.between(from: 1, to: 10)
#   date = Faker::Date.forward(days: 365)
#   charity_id = rand(1..5)
#   user_id = rand(2..3)
  Task.create title: 'Build a garden bed', summary: 'Help us build some beds for our new vegetable garden', description: Faker::Lorem.sentence(word_count: 200), hours: Faker::Number.between(from: 1, to: 10), date: Faker::Date.forward(days: 365), charity_id: 5, user_id: rand(2..3)
  Task.create title: 'Deliver food parcels', summary: 'Deliver food parcels in the lead up to Christmas to those who need it most', description: Faker::Lorem.sentence(word_count: 200), hours: Faker::Number.between(from: 1, to: 10), date: Faker::Date.forward(days: 365), charity_id: 8, user_id: rand(2..3)
  Task.create title: 'Christmas present drive', summary: 'Help put a smile on every kids face these holidays', description: Faker::Lorem.sentence(word_count: 200), hours: Faker::Number.between(from: 1, to: 10), date: Faker::Date.forward(days: 365), charity_id: 7, user_id: rand(2..3)
  Task.create title: 'Help others learn', summary: 'Tutor a child who needs extra assistance getting an education', description: Faker::Lorem.sentence(word_count: 200), hours: Faker::Number.between(from: 1, to: 10), date: Faker::Date.forward(days: 365), charity_id: 2, user_id: rand(2..3)
  Task.create title: 'Plant some tres', summary: 'Plant some trees along the beautiful Yarra and protect wildlife habitat', description: Faker::Lorem.sentence(word_count: 200), hours: Faker::Number.between(from: 1, to: 10), date: Faker::Date.forward(days: 365), charity_id: 3, user_id: rand(2..3)
  Task.create title: 'Foster a fury friend', summary: 'Help dogs have a second chance at life and find their furever home', description: Faker::Lorem.sentence(word_count: 200), hours: Faker::Number.between(from: 1, to: 10), date: Faker::Date.forward(days: 365), charity_id: 1, user_id: rand(2..3)
  Task.create title: 'Interpreter', summary: 'Speak a second language? Interpret for those who need extra assistance completing paperwork', description: Faker::Lorem.sentence(word_count: 200), hours: Faker::Number.between(from: 1, to: 10), date: Faker::Date.forward(days: 365), charity_id: 6, user_id: rand(2..3)
  Task.create title: 'Soup kitchen', summary: 'Serve a hot meal to those that would otherwise go hungry', description: Faker::Lorem.sentence(word_count: 200), hours: Faker::Number.between(from: 1, to: 10), date: Faker::Date.forward(days: 365), charity_id: 4, user_id: rand(2..3)
  Task.create title: "Book sale", summary: 'Help us raise much needed funds', description: Faker::Lorem.sentence(word_count: 200), hours: Faker::Number.between(from: 1, to: 10), date: Faker::Date.forward(days: 365), charity_id: 8, user_id: rand(2..3)
  Task.create title: 'Bake sale', summary: 'Raise much needed funds for new equipment', description: Faker::Lorem.sentence(word_count: 200), hours: Faker::Number.between(from: 1, to: 10), date: Faker::Date.forward(days: 365), charity_id: 7, user_id: rand(2..3)
  

count = 0
10.times do
  street_add = "120 Elizabeth street"
  suburb = 'Melbourne'
  state = "Victoria"
  country = "Australia"
  task_id = count += 1
  Address.create street_add: street_add, suburb: suburb, state: state, country: country, task_id: task_id
end  

Skill.create({name: 'Baking/Cooking'})
Skill.create({name: 'Basic construction'})
Skill.create({name: 'Gardening'})
Skill.create({name: 'Anyone'})
Skill.create({name: 'Money handling'})
Skill.create({name: 'Sporting'})
# 5.times do
#   name = Faker::Lorem.word
#   Skill.create name: name
# end  

50.times do
  task_id = rand(1..10)
  skill_id = rand(1..5)
  RequiredSkill.create task_id: task_id, skill_id: skill_id
end  



