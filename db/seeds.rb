require 'open-uri'

puts "Cleaning DB"
Synth.destroy_all
User.destroy_all
puts "DB is clean"

puts "Creating Users"
user1 = User.create(email: "frank@gmail.com", password: "123456")
puts "Created #{User.last.email}"
user2 = User.create(email: "jack@gmail.com", password: "123456")
puts "Created #{User.last.email}"
puts "Created n.#{User.count} users"

puts "Creating Synths"

# Synth 1
synth1 = Synth.create!(
  name: "ms-20",
  brand: "korg",
  price: 15,
  category: "Analog",
  description: "Mini synth with all patch cables and power supply",
  conditions: Synth::CONDITIONS.sample,
  user: user1
)
file1 = URI.open("https://res.cloudinary.com/dpzidqpya/image/upload/v1648221030/lsnj5sypsi8df7ds3gnl.jpg")
file2 = URI.open("https://res.cloudinary.com/dpzidqpya/image/upload/v1648221105/zzzsnrugfh2hrw6br2zd.jpg")
synth1.images.attach(io: file1, filename: 'synth.jpg', content_type: 'image/png')
synth1.images.attach(io: file2, filename: 'synth.jpg', content_type: 'image/png')
puts "Synth #{Synth.count} is created"

# Synth2
synth2 = Synth.create!(
  name: "jx-3p",
  brand: "roland",
  price: 30,
  category: "Analog",
  description: "61-Key Programmable Preset Polyphonic Synthesiser",
  conditions: Synth::CONDITIONS.sample,
  user: user1
)
file1 = URI.open("https://res.cloudinary.com/dpzidqpya/image/upload/v1648636060/n1nxxkrnjpxqcreen3s2.jpg")
file2 = URI.open("https://res.cloudinary.com/dpzidqpya/image/upload/v1648636070/bzmpv1jqugswev7ldx1x.jpg")
file3 = URI.open("https://res.cloudinary.com/dpzidqpya/image/upload/v1648636080/qbcmfo0myazsdkc8qrbs.jpg")
synth2.images.attach(io: file1, filename: 'synth.jpg', content_type: 'image/png')
synth2.images.attach(io: file2, filename: 'synth.jpg', content_type: 'image/png')
synth2.images.attach(io: file3, filename: 'synth.jpg', content_type: 'image/png')
puts "Synth #{Synth.count} is created"

# Synth3
synth3 = Synth.create!(
  name: "vojager",
  brand: "moog",
  price: 25,
  category: "Analog",
  description: "Incredible instrument. Selling because it’s not quite the one for me. Open to reasonable offers",
  conditions: Synth::CONDITIONS.sample,
  user: user1
)
file1 = URI.open("https://res.cloudinary.com/dpzidqpya/image/upload/v1648636753/p6cqzydjocjcmzh9k7jb.jpg")
file2 = URI.open("https://res.cloudinary.com/dpzidqpya/image/upload/v1648636770/fw9b4an7fjsvipjhfql0.jpg")
file3 = URI.open("https://res.cloudinary.com/dpzidqpya/image/upload/v1648636781/yczukmikotzjecxs16qe.jpg")
synth3.images.attach(io: file1, filename: 'synth.jpg', content_type: 'image/png')
synth3.images.attach(io: file2, filename: 'synth.jpg', content_type: 'image/png')
synth3.images.attach(io: file3, filename: 'synth.jpg', content_type: 'image/png')
puts "Synth #{Synth.count} is created"

# Synth4
synth4 = Synth.create!(
  name: "dx7",
  brand: "yamaha",
  price: 18,
  category: "Digital",
  description: "Fully Serviced less than 6 months ago, only used in a Studio Setting. Comes with Original Cartridge",
  conditions: Synth::CONDITIONS.sample,
  user: user1
)
file1 = URI.open("https://res.cloudinary.com/dpzidqpya/image/upload/v1648637731/ixijghvpyvfxnkjm1zlb.jpg")
file2 = URI.open("https://res.cloudinary.com/dpzidqpya/image/upload/v1648637747/kgm0ktazqhlymrviqx2k.jpg")
file3 = URI.open("https://res.cloudinary.com/dpzidqpya/image/upload/v1648637752/s1tycvs27nhuddzkckro.jpg")
file4 = URI.open("https://res.cloudinary.com/dpzidqpya/image/upload/v1648637759/q1w3kvaost3gk9mxe1ro.jpg")
file5 = URI.open("https://res.cloudinary.com/dpzidqpya/image/upload/v1648637763/hl2qjrjhyqeup0hlls7b.jpg")
synth4.images.attach(io: file1, filename: 'synth.jpg', content_type: 'image/png')
synth4.images.attach(io: file2, filename: 'synth.jpg', content_type: 'image/png')
synth4.images.attach(io: file3, filename: 'synth.jpg', content_type: 'image/png')
synth4.images.attach(io: file4, filename: 'synth.jpg', content_type: 'image/png')
synth4.images.attach(io: file5, filename: 'synth.jpg', content_type: 'image/png')
puts "Synth #{Synth.count} is created"

# Synth 5
synth5 = Synth.create!(
  name: "sh-09",
  brand: "roland",
  price: 22,
  category: "Analog",
  description: "Mini synth with all patch cables and power supply",
  conditions: Synth::CONDITIONS.sample,
  user: user1
)
file1 = URI.open("https://res.cloudinary.com/dpzidqpya/image/upload/v1648638859/q19rxdbxf3u6wfharvd8.jpg")
file2 = URI.open("https://res.cloudinary.com/dpzidqpya/image/upload/v1648638864/ootlt3cbgpjxzmc8hjiu.jpg")
synth5.images.attach(io: file1, filename: 'synth.jpg', content_type: 'image/png')
synth5.images.attach(io: file2, filename: 'synth.jpg', content_type: 'image/png')
puts "Synth #{Synth.count} is created"

puts "Done!"
