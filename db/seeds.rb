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
    password: "chicken",
    bio: "Trying to go pro at fortnite",
    ph_number: "045249432"
)
u2 = User.create!(
    name: "Zac Bell",
    handle: "seniorzoink",
    email: "yungbludyungcuz@gmai.com",
    address: "Ayyyoooo",
    password: "chicken",
    bio: "My wife left me",
    ph_number: "0452494324"
)
u3 = User.create!(
    name: "Shaun Mendes",
    handle: "mennymez",
    email: "mezzymez@gmail.com",
    address: "Mez Street 104 Southside",
    password: "chicken",
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

u1.streams << s1
u2.streams << s2

puts "Creating user stream associations"
puts "User #{User.last.name} has #{User.last.streams.length} streams"

puts "Creating comments"
Comment.destroy_all

c1 = Comment.create!(
    comment: "Hey bro do a flip"
)
c2 = Comment.create!(
    comment: "you suck"
)
c3 = Comment.create!(
    comment: "Pick up the shotty"
)
c4 = Comment.create!(
    comment: "Play doki doki literature club"
)
c5 = Comment.create!(
    comment: "OMG"
)
c6 = Comment.create!(
    comment: "Thats crazy"
)
c7 = Comment.create!(
    comment: "Whats your irl name?"
)

puts "Created #{Comment.count} comments:"
puts Comment.all.pluck(:comment).join ", "

puts "Creating stream comment associations"
puts "Stream #{Stream.last.title} has #{Stream.last.comments.length} comments"

s1.comments << c1 << c2 << c5 << c7
s2.comments << c3 << c4 << c6

puts "Creating user comment associations"
puts "User #{User.last.name} has #{User.last.comments.length} comments"

u3.comments << c1 << c2 << c5 << c7
u2.comments << c3 << c4 << c6


    