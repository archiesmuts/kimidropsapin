# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Comment.destroy_all
Post.destroy_all

10.times do
  Post.create do |test_post|
    test_post.title = Faker::Lorem.sentence
    test_post.body = Faker::Lorem.paragraph(4)
    test_post.slug = Faker::Internet.slug("#{test_post.title.downcase.chop}", '-')
  end
end
