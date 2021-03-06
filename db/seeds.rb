# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

topic_list = ["Music", "Technology", "Art", "Food & Drink", "Business", "Parties", "Classes", "Sports & Wellbeing", "Film", "Outdoors", "Fashion", "Sci-Fi",]


topic_list.each do |n|
  Topic.create(name: n)
end

User.create!(
  email: 'sebastian.virlan@yahoo.com',
  password: 'greatuni',
  first_name: 'Sebastian',
  last_name: 'Virlan'
) unless User.find_by_email('sebastian.virlan@yahoo.com')

Event.create!(
  title: 'Netflix is Launching',
  description: 'Netflix, amazing online movies platform is launching !!!! Click HERE --->>>>> http://localhost:3000/netflix_login',
  price: 0,
  topic_id: 9,
  creator_id: User.first.id
)

100.times do
  Event.create!(
    title: Faker::Friends.quote,
    description: Faker::Community.quotes,
    price: rand(1..200),
    topic_id: Topic.order("RANDOM()").first.id,
    creator_id: User.first.id
  )
end