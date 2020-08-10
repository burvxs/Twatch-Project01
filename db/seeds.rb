# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating users"

User.destroy_all

u1 = User.create!(
    name: "Ben Purvis",
    handle: "burvxs",
    email: "benny.purvis@hotamil.com",
    address: "1234 Fake Street",
    password_digest: "chicken",
    bio: "Trying to go pro at fortnite",
    ph_number: "045249432"
)
u2 = User.create!(
    name: "Zac Bell",
    handle: "seniorzoink",
    email: "yungbludyungcuz@gmai.com",
    address: "Ayyyoooo",
    password_digest: "chicken",
    bio: "My wife left me",
    ph_number: "0452494324"
)
u2 = User.create!(
    name: "Shaun Mendes",
    handle: "mennymez",
    email: "mezzymez@gmail.com",
    address: "Mez Street 104 Southside",
    password_digest: "chicken",
    bio: "Hey names shaun",
    ph_number: "0452494324"
)
puts "Created #{User.count} users:"
puts User.all.pluck(:handle).join ", "

puts "Creating streams"
Stream.destroy_all

s1 = Stream.create!(
    title: "Streaming fortnite chapter 2 season 3",
    capture_url: "clips/clip_1.avi",
    video_time: "10.00"
)
s2 = Stream.create!(
    title: "Come checkout this",
    capture_url: "clips/clip_2.avi",
    video_time: "10.00"
)

    