# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# User.destroy_all
# City.destroy_all
# Gossip.destroy_all
# Tag.destroy_all
# Relation.destroy_all
# PrivateMessage.destroy_all

10.times do
	City.create(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
end
c = City.all

10.times do
	Tag.create(title: Faker::Quote.robin)
end
t = Tag.all

10.times do
	User.create(first_name: Faker::Name.first_name , last_name: Faker::Name.last_name, description: Faker::Hipster.paragraph(sentence_count: 2), email: Faker::Internet.email , age: Faker::Number.between(from: 18 , to: 50) , city: c[rand(0..9)])
end
u = User.all

20.times do
	Gossip.create(title: Faker::Team.name, content: Faker::Hipster.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4), tags: [t[rand(0..9)], t[rand(0..9)]], user: u[rand(0..9)])
end
g = Gossip.all

20.times do
	PrivateMessage.create(content: Faker::Hipster.paragraphs(number: 1), sender: u[rand(0..9)], recipient: u[rand(0..9)])
end
mp = PrivateMessage.all

puts "Chargement terminé..."