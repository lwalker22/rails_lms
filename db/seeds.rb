# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

## Write Ruby Code in here ## ## Data to play around with##

## Faker Gem - fake data to play around with
## https://github.com/faker-ruby/faker
# Run Seeds file : bundle exec rake db:seed

roles = ['teacher', 'ta', 'student']
10.times do
  course = Course.create(
    name: Faker::Science.scientist
  )

  5.times do
    user = User.create(
      first_name: Faker::TvShows::RickAndMorty.character,
      last_name: Faker::Games::Zelda.character
    )

    Enrollment.create(
      role: roles.sample,
      course_id: course.id,
      user_id: user.id
    )
  end
end
puts 'data seeded'

