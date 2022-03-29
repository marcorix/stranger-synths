require 'open-uri'

puts "Cleaning DB"
Synth.destroy_all
User.destroy_all
puts "DB is clean"

puts "Creating Users"
user1 = User.create(email: "frank@gmail.com", password: "123456")
user2 = User.create(email: "jack@gmail.com", password: "123456")

puts "Creating Synths"

# Synth 1
synth1 = Synth.create!(
  name: "ms-20",
  brand: "korg",
  price: 20,
  category: "Analog",
  description: "mini synth with all patch cables and power supply",
  conditions: "like new",
  user: user1
)
file1 = URI.open("https://res.cloudinary.com/dpzidqpya/image/upload/v1648221030/lsnj5sypsi8df7ds3gnl.jpg")
file2 = URI.open("https://res.cloudinary.com/dpzidqpya/image/upload/v1648221105/zzzsnrugfh2hrw6br2zd.jpg")
synth1.images.attach(io: file1, filename: 'ms20-1.jpg', content_type: 'image/png')
synth1.images.attach(io: file2, filename: 'ms20-2.jpg', content_type: 'image/png')
puts "Synth #{synth1.id} is created"

puts "Done!"
