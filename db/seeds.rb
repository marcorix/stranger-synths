require 'open-uri'

puts "Cleaning DB"
Synth.destroy_all
User.destroy_all
puts "DB is clean"

# Users
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
  location: "138 Kingsland Rd, London",
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
  location: "Sidworth St, London",
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
  location: "470 Kingsland Rd, London",
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
  location: "9 Chatsworth Rd, London",
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
  location: "231 Lower Clapton Rd, London",
  user: user1
)
file1 = URI.open("https://res.cloudinary.com/dpzidqpya/image/upload/v1648638859/q19rxdbxf3u6wfharvd8.jpg")
file2 = URI.open("https://res.cloudinary.com/dpzidqpya/image/upload/v1648638864/ootlt3cbgpjxzmc8hjiu.jpg")
synth5.images.attach(io: file1, filename: 'synth.jpg', content_type: 'image/png')
synth5.images.attach(io: file2, filename: 'synth.jpg', content_type: 'image/png')
puts "Synth #{Synth.count} is created"

# Synth 6
synth6 = Synth.create!(
  name: "piano 3",
  brand: "Nord",
  price: 30,
  category: "Digital",
  description: "88-Key Digital Piano. Works perfectly and rarely used.",
  conditions: Synth::CONDITIONS.sample,
  location: "84-86 Essex Rd, London",
  user: user2
)
file1 = URI.open("https://res.cloudinary.com/dpzidqpya/image/upload/v1648655438/xp1ky05hdv98pkh4cg18.jpg")
file2 = URI.open("https://res.cloudinary.com/dpzidqpya/image/upload/v1648655444/mgkdkw0yajje8mdtzh2t.jpg")
file3 = URI.open("https://res.cloudinary.com/dpzidqpya/image/upload/v1648655449/uevxc5on0ldehzhalnhl.jpg")
file4 = URI.open("https://res.cloudinary.com/dpzidqpya/image/upload/v1648655455/ktwi9rmuw56wqn6kybpi.jpg")
file5 = URI.open("https://res.cloudinary.com/dpzidqpya/image/upload/v1648655460/wod84kiit2g6y38dsfkg.jpg")
synth6.images.attach(io: file1, filename: 'synth.jpg', content_type: 'image/png')
synth6.images.attach(io: file2, filename: 'synth.jpg', content_type: 'image/png')
synth6.images.attach(io: file3, filename: 'synth.jpg', content_type: 'image/png')
synth6.images.attach(io: file4, filename: 'synth.jpg', content_type: 'image/png')
synth6.images.attach(io: file5, filename: 'synth.jpg', content_type: 'image/png')
puts "Synth #{Synth.count} is created"

# Synth 7
synth7 = Synth.create!(
  name: "tr-808",
  brand: "roland",
  price: 50,
  category: "Drum-machine",
  description: "Legendary vintage unit heard on countless albums. Fully tested and in excellent working order.",
  conditions: Synth::CONDITIONS.sample,
  location: "43 Choumert Rd, London",
  user: user2
)
file1 = URI.open("https://res.cloudinary.com/dpzidqpya/image/upload/v1648656038/rekk4oqpckdq8upmijwh.jpg")
file2 = URI.open("https://res.cloudinary.com/dpzidqpya/image/upload/v1648656046/qysllueqs3fp8uhi8hig.jpg")
file3 = URI.open("https://res.cloudinary.com/dpzidqpya/image/upload/v1648656054/jlqff9ts8mnilfvccegb.jpg")
file4 = URI.open("https://res.cloudinary.com/dpzidqpya/image/upload/v1648656060/b7mwegph1skkmqyoftxj.jpg")
synth7.images.attach(io: file1, filename: 'synth.jpg', content_type: 'image/png')
synth7.images.attach(io: file2, filename: 'synth.jpg', content_type: 'image/png')
synth7.images.attach(io: file3, filename: 'synth.jpg', content_type: 'image/png')
synth7.images.attach(io: file4, filename: 'synth.jpg', content_type: 'image/png')
puts "Synth #{Synth.count} is created"

# Synth 8
synth8 = Synth.create!(
  name: "mpc 2000XL",
  brand: "akai",
  price: 30,
  category: "Sampler",
  description: "32RAM, EB-16 Effect board, 8 ch outboard with Gotek fdd emulator installed.",
  conditions: Synth::CONDITIONS.sample,
  location: "1 Violet Hill, London",
  user: user2
)
file1 = URI.open("https://res.cloudinary.com/dpzidqpya/image/upload/v1648656616/m05rsjni9w0fs0fbfyw2.jpg")
file2 = URI.open("https://res.cloudinary.com/dpzidqpya/image/upload/v1648656621/gfrlfucm8cdymjddf9ej.jpg")
file3 = URI.open("https://res.cloudinary.com/dpzidqpya/image/upload/v1648656627/re77erosxgset5k4nwvh.jpg")
synth8.images.attach(io: file1, filename: 'synth.jpg', content_type: 'image/png')
synth8.images.attach(io: file2, filename: 'synth.jpg', content_type: 'image/png')
synth8.images.attach(io: file3, filename: 'synth.jpg', content_type: 'image/png')
puts "Synth #{Synth.count} is created"

# Synth 9
synth9 = Synth.create!(
  name: "a100 System",
  brand: "doepfer",
  price: 30,
  category: "Eurorack",
  description: "Pittsburgh VCO + Orig. Case + Patch Cables + User Manual.",
  conditions: Synth::CONDITIONS.sample,
  location: "5 Parkway, London",
  user: user2
)
file1 = URI.open("https://res.cloudinary.com/dpzidqpya/image/upload/v1648657215/ccompvlcdbji56tmk1ou.jpg")
file2 = URI.open("https://res.cloudinary.com/dpzidqpya/image/upload/v1648657243/l8eoo75kgaagx0gebj0v.jpg")
file3 = URI.open("https://res.cloudinary.com/dpzidqpya/image/upload/v1648657251/sswpysfoh2nmedw9rvib.jpg")
file4 = URI.open("https://res.cloudinary.com/dpzidqpya/image/upload/v1648657236/edfct308p6eow4jsoovs.jpg")
synth9.images.attach(io: file1, filename: 'synth.jpg', content_type: 'image/png')
synth9.images.attach(io: file2, filename: 'synth.jpg', content_type: 'image/png')
synth9.images.attach(io: file3, filename: 'synth.jpg', content_type: 'image/png')
synth9.images.attach(io: file4, filename: 'synth.jpg', content_type: 'image/png')
puts "Synth #{Synth.count} is created"

# Synth 10
synth10 = Synth.create!(
  name: "juno-106",
  brand: "roland",
  price: 23,
  category: "Digital",
  description: "Superb polysynth in really clean condition.It's been recently serviced",
  conditions: Synth::CONDITIONS.sample,
  location: "114 Junction Rd, London",
  user: user2
)
file1 = URI.open("https://res.cloudinary.com/dpzidqpya/image/upload/v1648657805/reudlgdkilekjnpfzlt3.jpg")
file2 = URI.open("https://res.cloudinary.com/dpzidqpya/image/upload/v1648657810/mozaeed9azccszxh4lox.jpg")
file3 = URI.open("https://res.cloudinary.com/dpzidqpya/image/upload/v1648657815/m9ow2tsgyauhsemttst3.jpg")
file4 = URI.open("https://res.cloudinary.com/dpzidqpya/image/upload/v1648657820/e4zznbbeckzkweooqymd.jpg")
file5 = URI.open("https://res.cloudinary.com/dpzidqpya/image/upload/v1648657825/mzv5xvh06z2cr69ujsab.jpg")
file6 = URI.open("https://res.cloudinary.com/dpzidqpya/image/upload/v1648657833/utyc9fmb776hlsrvpw3o.jpg")
synth10.images.attach(io: file1, filename: 'synth.jpg', content_type: 'image/png')
synth10.images.attach(io: file2, filename: 'synth.jpg', content_type: 'image/png')
synth10.images.attach(io: file3, filename: 'synth.jpg', content_type: 'image/png')
synth10.images.attach(io: file4, filename: 'synth.jpg', content_type: 'image/png')
synth10.images.attach(io: file5, filename: 'synth.jpg', content_type: 'image/png')
synth10.images.attach(io: file6, filename: 'synth.jpg', content_type: 'image/png')
puts "Synth #{Synth.count} is created"

# Finish
puts "Done!"
