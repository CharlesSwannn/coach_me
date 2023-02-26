require 'faker'

puts "Destroying old coaches..."
puts "-------------------------"
Coach.destroy_all

puts "Creating new coaches..."
puts "-------------------------"

10.times do
  coach = Coach.create(
    name: Faker::Sports::Football.coach,
    details: Faker::Quote.matz,
    user: User.first
  )
  puts "#{coach.name} was created successfully!"
end
