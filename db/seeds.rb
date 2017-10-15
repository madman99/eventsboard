# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# 10.times do |i|
#  User.create!(
#    email: Faker::Internet.email,
#    password: '111111',
#    password_confirmation: '111111'
#    )
#end

201.times do |a|
  @start_d = Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today)
  @end_d = @start_d + 2.hour
  @crea = Faker::Date.between_except(1.year.ago, Date.today, Date.today)
  Event.create!(
    title: Faker::RockBand.name,
    description: Faker::Lorem.paragraphs(1),
    start_date: @start_d,
    end_date: @end_d,
    venue: Faker::Address.street_address,
    location: Faker::Address.country,
    created_at: @crea,
    user_id: Faker::Number.between(1, 11),
    )
  end