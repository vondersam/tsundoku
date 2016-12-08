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
samuel.street1 = "15 avenue du vivier d'oie"
samuel.profile_pic_url = open("http://vignette1.wikia.nocookie.net/harrypotter/images/b/b2/2001-Harry-Potter-and-the-Sorcerer-s-Stone-Promotional-Shoot-HQ-harry-potter-11097228-1600-1960.jpg/revision/latest?cb=20141122213655")
samuel.postcode = "1000"
samuel.city = "Brussels"
samuel.country = "Belgium"
samuel.password = "FUBARS"
samuel.password_confirmation = "FUBARS"
samuel.bio = "Im a poor booy from a poor family!"
samuel.rating = 5
samuel.valid?
samuel.save!



10.times do
  user = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  profile_pic_url: open("http://www.newyorker.com/wp-content/uploads/2016/04/Rothman-Karl-Oves-Sentimental-Education-1200.jpg"),
  email: Faker::Internet.email,
  password: "FUBARS",
  password_confirmation: "FUBARS",
  phone_number: "0494201414",
  street1: (1 + rand(50)).to_s + Faker::Address.street_name,
  postcode: ([1000, 1080, 1030, 6688, 10000, 1020, "NWE 15E", "CV4 35E"].sample).to_s,
  city: ["Brussels", "London", "Paris", "Gent", "Antwerp"].sample,
  country: ["Belgium", "France", "England"].sample,
  bio: Faker::Lorem.paragraph,
  rating: rand(0..5)
  )
  user.save!
end

genres = Genre.create([{name: "Sci-Fi"}, {name:"Comedy"}, {name: "Romance"}, {name: "Thriller"}, {name: "Self-help"}, {name: "Children"}, {name: "Bromance"}, {name: "Adventure"}, {name: "Learning"}])

# 10.times do
# count += 1
#   book = PhysicalBook.new(
    # title: Faker::Book.title,
    # author: Faker::Book.author,
    # isbn: Faker::Number.number(10),
    # description: Faker::Lorem.sentence(4),
    # cover_pic_url: "http://lorempixel.com/200/200/",
    # genre_id: 1 + rand(9),
    # status: "exchangeable",
#     picture_url: "http://lorempixel.com/200/200/",
    # user_id: count,
    # price: 0
#     )
#   book.save!

# end



book_params = [
  {
    "title"=>"Anne Frank in het achterhuis: wie was wie?",
    "user_id"=>rand(1..10),
    "author"=>"Aukje Vergeest",
    "isbn"=>"9789086670383",
    "description"=>"True story.. Literally",
    "cover_pic_url"=>"http://books.google.be/books/content?id=HVZ6AgAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=none&source=gbs_api",
    "genre_id"=>rand(1..9),
    "status"=>"exchangeable",
    "price"=>0
    },

{"title"=>"Harry Potter and International Relations",
  "user_id"=>rand(1..10),
  "author"=>"Daniel H. Nexon, Iver B. Neumann",
  "isbn"=>"9780742539594",
  "description"=>"Because it's sheer fun! All about fun! THE definition of fun!",
  "cover_pic_url"=>"http://books.google.be/books/content?id=DKcWE3WXoj8C&printsec=frontcover&img=1&zoom=1&edge=none&source=gbs_api",
  "genre_id"=>rand(1..9),
    "status"=>"exchangeable",
    "price"=>0
  },

 {"title"=>"Saltwater Buddha: A Surfers Quest to Find Zen on the Sea (Large Print 16pt)",
  "user_id"=>rand(1..10),
  "author"=>"Mu Soeng, Jaimal Yogis",
  "isbn"=>"9781458783868",
  "description"=>"The author writes with a very positive vibe and great eloquence about subjects, which mean a lot to me. In particular, he talks about his own life and spiritual journey, and how surfing has, since a very young age, been a central component to them.",
  "cover_pic_url"=>"http://books.google.be/books/content?id=B-GP-MrQf4wC&printsec=frontcover&img=1&zoom=1&edge=none&source=gbs_api",
  "genre_id"=>rand(1..9),
    "status"=>"exchangeable",
    "price"=>0
  },

  {"title"=>"Céline: Journey to the End of the Night",
    "user_id"=>rand(1..10),
    "author"=>"John Sturrock",
    "isbn"=>"9780521378543",
    "description"=>"It allowed to finally embrace human beings in all their darkness... ",
    "cover_pic_url"=>"http://books.google.be/books/content?id=olcJmSwcJSoC&printsec=frontcover&img=1&zoom=1&edge=none&source=gbs_api",
    "genre_id"=>rand(1..9),
    "status"=>"exchangeable",
    "price"=>0
    },

  {"title"=>"Survival In Auschwitz",

    "user_id"=>rand(1..10),
    "author"=>"Primo Levi",
    "isbn"=>"9780684826806",
    "description"=>"This is one of my favourite book,  a testimony of the atrocity of the WWII",
    "cover_pic_url"=>"http://books.google.be/books/content?id=6w1uHveM54EC&printsec=frontcover&img=1&zoom=1&edge=none&source=gbs_api",
    "genre_id"=>rand(1..9),
    "status"=>"exchangeable",
    "price"=>0
    },

  {"title"=>"The Outsiders",
    "user_id"=>rand(1..10),
    "author"=>"SE Hinton",
    "isbn"=>"9781101642610", "description"=>"",
    "cover_pic_url"=>"http://books.google.be/books/content?id=ha6GIYze5lEC&printsec=frontcover&img=1&zoom=1&edge=none&source=gbs_api",
    "genre_id"=>rand(1..9),
    "status"=>"exchangeable",
    "price"=>0
    },

  {"title"=>"Kuolleet sielut",
    "user_id"=>rand(1..10),
    "author"=>"Nikolai Gogol, Jalo Kalima, Juhani Konkka",
    "isbn"=>"9789510179024",
    "description"=>"Awesome depiction of 19th century Russia",
    "cover_pic_url"=>nil,
    "genre_id"=>rand(1..9),
    "status"=>"exchangeable",
    "price"=>0
    },

    {"title"=>"Je devais aussi tuer",
      "user_id"=>rand(1..10),
      "author"=>"Nima Zamar",
      "isbn"=>"9782226141866",
      "description"=>"Real autobiography about a former Mossad female agent who achieve to quit these secret services",
      "cover_pic_url"=>"http://books.google.be/books/content?id=oq0sAQAAIAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api",
      "genre_id"=>rand(1..9),
    "status"=>"exchangeable",
    "price"=>0
      },

    {"title"=>"Boiling A Frog",
      "user_id"=>rand(1..10),
      "author"=>"Christopher Brookmyre",
      "isbn"=>"9780748131952",
      "description"=>"The plot is gripping and the humour is very, very bitchy.",
      "cover_pic_url"=>"http://books.google.be/books/content?id=CLxKmYZ_Jc4C&printsec=frontcover&img=1&zoom=1&source=gbs_api",
      "genre_id"=>rand(1..9),
    "status"=>"exchangeable",
    "price"=>0
      },

      {"title"=>"Deep: Freediving, Renegade Science and What the Ocean Tells Us About Ourselves",
        "user_id"=>rand(1..10),
        "author"=>"James Nestor",
        "isbn"=>"9781847659064",
        "description"=>"Because it is yet another book, which circles the subjects of water and personal well-being. James Nestor very vividly tracks biological human traits, and compares them to various species that live in our oceans. He concludes, based upon the knowledge that the evolutionary ancestors of humans originated from the seas, we, as humans today, inevitably share various capabilities that allows us to flourish in water. Specifically, he compares humans to species that still inhabit the oceans, and takes examples of people who freedive, in order to compare both's biological traits. If you ever wondered why water is such a source of happiness to the majority of humans, you'll definitely find some answers here.",
        "cover_pic_url"=>"http://books.google.be/books/content?id=KjAlAwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=none&source=gbs_api",
        "genre_id"=>rand(1..9),
    "status"=>"exchangeable",
    "price"=>0
        }
]

book_params.each do |params|
  PhysicalBook.create!(params)
end
