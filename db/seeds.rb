# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "Generation start"
20.times do
	tags=Tag.create(name: Faker::Lorem.word)
end 
20.times do |i|
	puts "Generation author #{i}"
	author = Author.create(name: Faker::Name.name, email: Faker::Internet.email, city: Faker::Address.city, adress: Faker::Address.street_address, birth: Faker::Date.forward(23))
	rand(1..10).times do
		post = Post.create(author: author, label: Faker::Lorem.word, text: Faker::Lorem.sentence,tags: Tag.all.sample(3))		
		rand(0..10).times do
			comment = Comment.create(name: Faker::Name.name, text: Faker::Lorem.sentence, post: post)
		end
	end
end