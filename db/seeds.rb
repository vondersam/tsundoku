# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
count = 0

samuel = User.new
samuel.first_name = "Samuel"
samuel.last_name = "Horn"
samuel.email = "sammy@cute.me"
samuel.street1 = "avenue du vivier d'oie"
samuel.postbox = "15"
samuel.profile_pic_url = "15"
samuel.postcode = "1000"
samuel.city = "Brussels"
samuel.country = "Belgium"
samuel.password = "FUBARS"
samuel.password_confirmation = "FUBARS"
samuel.valid?
samuel.save!


10.times do
  user = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  profile_pic_url: "http://lorempixel.com/200/200/",
  email: Faker::Internet.email,
  password: "FUBARS",
  password_confirmation: "FUBARS",
  phone_number: "0494201414",
  street1: Faker::Address.street_name,
  postbox: (1 + rand(50)).to_s,
  postcode: ([1000, 1080, 1030, 6688, 10000, 1020, "NWE 15E", "CV4 35E"].sample).to_s,
  city: ["Brussels", "London", "Paris", "Gent", "Antwerp"].sample,
  country: ["Belgium", "France", "England"].sample
  )
  user.save!
end

genres = Genre.create([{name: "Sci-Fi"}, {name:"Comedy"}, {name: "Romance"}, {name: "Thriller"}, {name: "Self-help"}, {name: "Children"}, {name: "Bromance"}, {name: "Adventure"}, {name: "Learning"}])

10.times do
count += 1
  book = PhysicalBook.new(
    title: Faker::Book.title,
    author: Faker::Book.author,
    isbn: Faker::Number.number(10),
    description: Faker::Lorem.sentence(4),
    cover_pic_url: "http://lorempixel.com/200/200/",
    genre_id: 1 + rand(9),
    status: "exchangeable",
    picture_url: "http://lorempixel.com/200/200/",
    user_id: count,
    price: 0
    )
  book.save!

end

