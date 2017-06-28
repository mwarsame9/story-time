# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Story.destroy_all

15.times do |index|
  story = Story.create!(name: Faker::Lorem.sentence, image: Faker::LoremPixel.image("300x300"))
  15.times do |i|
    story.sentences.create!(author: Faker::Lorem.words(1)[0],text: Faker::Lorem.sentence(1))
  end
end

p "Created #{Story.count} stories"
