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
samuel.email = "samuel@horn.com"
samuel.street1 = "15 avenue du vivier d'oie"
samuel.profile_pic_url = open("http://vignette1.wikia.nocookie.net/harrypotter/images/b/b2/2001-Harry-Potter-and-the-Sorcerer-s-Stone-Promotional-Shoot-HQ-harry-potter-11097228-1600-1960.jpg")
samuel.postcode = "1000"
samuel.city = "Brussels"
samuel.country = "Belgium"
samuel.password = "FUBARS"
samuel.password_confirmation = "FUBARS"
samuel.bio = "Hi! I'm from Brussels and I'm currently involved with a NGO to help refugees. I love books about politics and history."
samuel.rating = 5
samuel.valid?
samuel.save!

gregory = User.new
gregory.first_name = "Gregory"
gregory.last_name = "Griffin"
gregory.email = "gregory@griffin.com"
gregory.street1 = "154 avenue louise"
gregory.profile_pic_url = open("https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/Karl_Ove_Knausg%C3%A5rd.jpg/220px-Karl_Ove_Knausg%C3%A5rd.jpg")
gregory.postcode = "1000"
gregory.city = "Brussels"
gregory.country = "Belgium"
gregory.password = "FUBARS"
gregory.password_confirmation = "FUBARS"
gregory.bio = "Hi! I'm from the US, California. I'm currently studying at Le Wagon and I'm really interested in frontend and Web design."
gregory.rating = 5
gregory.valid?
gregory.save!

jasper = User.new
jasper.first_name = "Jasper"
jasper.last_name = "Hendricks"
jasper.email = "jasper@hendricks.com"
jasper.street1 = "10 rue basse"
jasper.profile_pic_url = open("http://combiboilersleeds.com/images/person/person-5.jpg")
jasper.postcode = "1180"
jasper.city = "Brussels"
jasper.country = "Belgium"
jasper.password = "FUBARS"
jasper.password_confirmation = "FUBARS"
jasper.bio = "Hi! I'm a linguist from Antwerp and I like martial arts and coding. I'm specially interested in Chinese and artial marts books."
jasper.rating = 5
jasper.valid?
jasper.save!

samuelbrown = User.new
samuelbrown.first_name = "Samuel"
samuelbrown.last_name = "Rodriguez"
samuelbrown.email = "samuel@rodriguez.com"
samuelbrown.street1 = "24 rue de la regence"
samuelbrown.profile_pic_url = open("http://www.tvchoicemagazine.co.uk/sites/default/files/imagecache/interview_image/intex/michael_emerson.png")
samuelbrown.postcode = "1000"
samuelbrown.city = "Brussels"
samuelbrown.country = "Belgium"
samuelbrown.password = "FUBARS"
samuelbrown.password_confirmation = "FUBARS"
samuelbrown.bio = "Hi! I'm from Spain and I'm specially interested in Linguistics and coding. My favourite authors are Haruki Murakami and Karl Ove Knausgaard."
samuelbrown.rating = 5
samuelbrown.valid?
samuelbrown.save!

random = User.new
random.first_name = "Henrich"
random.last_name = "Fruchart"
random.email = "henrich@fruchart.com"
random.street1 = "1 rue Saint-Julien"
random.profile_pic_url = open("http://absorbmarketing.com/wp-content/uploads/2015/01/Picture-of-person.png")
random.postcode = "1080"
random.city = "Brussels"
random.country = "Belgium"
random.password = "FUBARS"
random.password_confirmation = "FUBARS"
random.bio = "Hello! I'm from Ghent and I love reading science fiction and thriller novels"
random.rating = 5
random.valid?
random.save!



genres = Genre.create([{name: "Sci-Fi"}, {name:"Comedy"}, {name: "Romance"}, {name: "Thriller"}, {name: "Self-help"}, {name: "Children"}, {name: "Romance"}, {name: "Adventure"}, {name: "Learning"}])




book_params = [
  {
    "title"=>"Anne Frank in het achterhuis: wie was wie?",
    "user_id"=>samuelbrown.id,
    "author"=>"Aukje Vergeest",
    "isbn"=>"9789086670383",
    "description"=>"True story.. Literally",
    "cover_pic_url"=>"http://books.google.be/books/content?id=HVZ6AgAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=none&source=gbs_api",
    "genre_id"=>genres.sample.id,
    "status"=>"exchangeable",
    "price"=>0
    },

{"title"=>"Harry Potter and International Relations",
  "user_id"=>random.id,
  "author"=>"Daniel H. Nexon, Iver B. Neumann",
  "isbn"=>"9780742539594",
  "description"=>"Because it's sheer fun! All about fun! THE definition of fun!",
  "cover_pic_url"=>"http://books.google.be/books/content?id=DKcWE3WXoj8C&printsec=frontcover&img=1&zoom=1&edge=none&source=gbs_api",
  "genre_id"=>genres.sample.id,
    "status"=>"exchangeable",
    "price"=>0
  },

 {"title"=>"Saltwater Buddha: A Surfers Quest to Find Zen on the Sea (Large Print 16pt)",
  "user_id"=>jasper.id,
  "author"=>"Mu Soeng, Jaimal Yogis",
  "isbn"=>"9781458783868",
  "description"=>"The author writes with a very positive vibe and great eloquence about subjects, which mean a lot to me. In particular, he talks about his own life and spiritual journey, and how surfing has, since a very young age, been a central component to them.",
  "cover_pic_url"=>"http://books.google.be/books/content?id=B-GP-MrQf4wC&printsec=frontcover&img=1&zoom=1&edge=none&source=gbs_api",
  "genre_id"=>genres.sample.id,
    "status"=>"exchangeable",
    "price"=>0
  },

  {"title"=>"Céline: Journey to the End of the Night",
    "user_id"=>samuelbrown.id,
    "author"=>"John Sturrock",
    "isbn"=>"9780521378543",
    "description"=>"It allowed to finally embrace human beings in all their darkness... ",
    "cover_pic_url"=>"http://books.google.be/books/content?id=olcJmSwcJSoC&printsec=frontcover&img=1&zoom=1&edge=none&source=gbs_api",
    "genre_id"=>genres.sample.id,
    "status"=>"exchangeable",
    "price"=>0
    },

  {"title"=>"Survival In Auschwitz",

    "user_id"=>jasper.id,
    "author"=>"Primo Levi",
    "isbn"=>"9780684826806",
    "description"=>"This is one of my favourite book,  a testimony of the atrocity of the WWII",
    "cover_pic_url"=>"http://books.google.be/books/content?id=6w1uHveM54EC&printsec=frontcover&img=1&zoom=1&edge=none&source=gbs_api",
    "genre_id"=>genres.sample.id,
    "status"=>"exchangeable",
    "price"=>0
    },

  {"title"=>"The Outsiders",
    "user_id"=>samuelbrown.id,
    "author"=>"SE Hinton",
    "isbn"=>"9781101642610", "description"=>"",
    "cover_pic_url"=>"http://books.google.be/books/content?id=ha6GIYze5lEC&printsec=frontcover&img=1&zoom=1&edge=none&source=gbs_api",
    "genre_id"=>genres.sample.id,
    "status"=>"exchangeable",
    "price"=>0
    },

  {"title"=>"Kuolleet sielut",
    "user_id"=>samuelbrown.id,
    "author"=>"Nikolai Gogol, Jalo Kalima, Juhani Konkka",
    "isbn"=>"9789510179024",
    "description"=>"Awesome depiction of 19th century Russia",
    "cover_pic_url"=>nil,
    "genre_id"=>genres.sample.id,
    "status"=>"exchangeable",
    "price"=>0
    },

    {"title"=>"Je devais aussi tuer",
      "user_id"=>samuel.id,
      "author"=>"Nima Zamar",
      "isbn"=>"9782226141866",
      "description"=>"Real autobiography about a former Mossad female agent who achieve to quit these secret services",
      "cover_pic_url"=>"http://books.google.be/books/content?id=oq0sAQAAIAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api",
      "genre_id"=>genres.sample.id,
    "status"=>"exchangeable",
    "price"=>0
      },

    {"title"=>"Boiling A Frog",
      "user_id"=>jasper.id,
      "author"=>"Christopher Brookmyre",
      "isbn"=>"9780748131952",
      "description"=>"The plot is gripping and the humour is very, very bitchy.",
      "cover_pic_url"=>"http://books.google.be/books/content?id=CLxKmYZ_Jc4C&printsec=frontcover&img=1&zoom=1&source=gbs_api",
      "genre_id"=>genres.sample.id,
    "status"=>"exchangeable",
    "price"=>0
      },

      {"title"=>"Deep: Freediving, Renegade Science and What the Ocean Tells Us About Ourselves",
        "user_id"=>samuel.id,
        "author"=>"James Nestor",
        "isbn"=>"9781847659064",
        "description"=>"Because it is yet another book, which circles the subjects of water and personal well-being. James Nestor very vividly tracks biological human traits, and compares them to various species that live in our oceans. He concludes, based upon the knowledge that the evolutionary ancestors of humans originated from the seas, we, as humans today, inevitably share various capabilities that allows us to flourish in water. Specifically, he compares humans to species that still inhabit the oceans, and takes examples of people who freedive, in order to compare both's biological traits. If you ever wondered why water is such a source of happiness to the majority of humans, you'll definitely find some answers here.",
        "cover_pic_url"=>"http://books.google.be/books/content?id=KjAlAwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=none&source=gbs_api",
        "genre_id"=>genres.sample.id,
    "status"=>"exchangeable",
    "price"=>0
        }
]

book_params.each do |params|
  PhysicalBook.create!(params)
end

first_item = WishlistItem.new
first_item.physical_book_id = 1
first_item.wishlist_id = 1
first_item.save!
