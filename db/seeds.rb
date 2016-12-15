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
samuel.profile_pic_url = open("http://res.cloudinary.com/bookaround/image/upload/v1481752258/samuelhorn_profile_pic_cctrmn.jpg")
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
gregory.profile_pic_url = open("http://res.cloudinary.com/bookaround/image/upload/v1481752500/Gregory_profile_pic_pnmx8s.jpg")
gregory.postcode = "1000"
gregory.city = "Brussels"
gregory.country = "Belgium"
gregory.password = "FUBARS"
gregory.password_confirmation = "FUBARS"
gregory.bio = "Hi! I'm from the US, California. I'm currently studying at Le Wagon and I'm really interested in front-end and Web design."
gregory.rating = 5
gregory.valid?
gregory.save!

jasper = User.new
jasper.first_name = "Jasper"
jasper.last_name = "Hendrickx"
jasper.email = "jasper@hendrickx.com"
jasper.street1 = "10 rue basse"
jasper.profile_pic_url = open("http://res.cloudinary.com/bookaround/image/upload/v1481752496/jasper_profile_pic_segwtd.jpg")
jasper.postcode = "1180"
jasper.city = "Brussels"
jasper.country = "Belgium"
jasper.password = "FUBARS"
jasper.password_confirmation = "FUBARS"
jasper.bio = "Hi! I'm a linguist from Antwerp and I like martial arts and coding. I'm especially interested in Chinese and martial arts books."
jasper.rating = 5
jasper.valid?
jasper.save!

samuelbrown = User.new
samuelbrown.first_name = "Samuel"
samuelbrown.last_name = "Rodriguez"
samuelbrown.email = "samuel@rodriguez.com"
samuelbrown.street1 = "24 rue de la regence"
samuelbrown.profile_pic_url = open("http://res.cloudinary.com/bookaround/image/upload/v1481752506/SamuelR_lo1yq7.jpg")
samuelbrown.postcode = "1000"
samuelbrown.city = "Brussels"
samuelbrown.country = "Belgium"
samuelbrown.password = "FUBARS"
samuelbrown.password_confirmation = "FUBARS"
samuelbrown.bio = "Hi! I'm from Spain and I'm especially interested in linguistics and coding. My favourite authors are Haruki Murakami and Karl Ove Knausgaard."
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



genres = Genre.create([{name: "Sci-Fi"}, {name:"Comedy"}, {name: "Romance"}, {name: "Thriller"}, {name: "Self-help"}, {name: "Children"}, {name: "Novel"}, {name: "Adventure"}, {name: "Learning"}, {name: "History"}])




book_params = [
  { "title"=>"The Alchemist",
    "user_id"=>samuelbrown.id,
    "author"=>"Paulo Coelho",
    "isbn"=>"9788576653721",
    "description"=>"The Alchemist by Paulo Coelho continues to change the lives of its readers forever. With more than two million copies sold around the world, The Alchemist has established itself as a modern classic, universally admired.The story of the treasures Santiago finds along the way teaches us, as only a few stories can, about the essential wisdom of listening to our hearts, learning to read the omens strewn along life's path, and, above all, following our dreams.",
    "cover_pic_url"=>"http://prodimage.images-bn.com/pimages/9780062315007_p0_v2_s192x300.jpg",
    "genre_id"=>5,
    "status"=>"exchangeable",
    "price"=>0,
    "picture_url"=> open("https://images-na.ssl-images-amazon.com/images/I/41H2XSLDIhL._SY344_BO1,204,203,200_.jpg")
  },

  { "title"=>"Harry Potter and the Philosopher's Stone",
    "user_id"=>random.id,
    "author"=>"J. K. Rowling",
    "isbn"=>"9780767538305",
    "description"=>"Harry Potter has no idea how famous he is. That's because he's being raised by his miserable aunt and uncle who are terrified Harry will learn that he's really a wizard, just as his parents were. But everything changes when Harry is summoned to attend an infamous school for wizards, and he begins to discover some clues about his illustrious birthright. From the surprising way he is greeted by a lovable giant, to the unique curriculum and colorful faculty at his unusual school, Harry finds himself drawn deep inside a mystical world he never knew existed and closer to his own noble destiny.",
    "cover_pic_url"=>"https://upload.wikimedia.org/wikipedia/en/6/6b/Harry_Potter_and_the_Philosopher's_Stone_Book_Cover.jpg",
    "genre_id"=>6,
    "status"=>"exchangeable",
    "price"=>0,
    "picture_url"=> open("https://cinebrary.files.wordpress.com/2012/09/hp1-book2.jpg")
  },

  { "title"=>"1984",
    "user_id"=>jasper.id,
    "author"=>" George Orwell",
    "isbn"=>"9780141182957",
    "description"=>"Written in 1948, 1984 was George Orwell’s chilling prophecy about the future. And while 1984 has come and gone, Orwell’s narrative is timelier than ever. 1984 presents a startling and haunting vision of the world, so powerful that it is completely convincing from start to finish. No one can deny the power of this novel, its hold on the imaginations of multiple generations of readers, or the resiliency of its admonitions—a legacy that seems only to grow with the passage of time.",
    "cover_pic_url"=>"https://lightlit.files.wordpress.com/2014/07/1984_by_alcook-d4z39dh.jpg",
    "genre_id"=>7,
    "status"=>"exchangeable",
    "price"=>0,
    "picture_url"=> open("http://booksat.scarlettrugers.com/bookcoverdesign/wp-content/uploads/2013/10/penguin-1984.jpg")
  },

  {"title"=>"Animal Farm",
    "user_id"=>samuelbrown.id,
    "author"=>"George Orwell",
    "isbn"=>"9780736692427",
    "description"=>"Animal Farm is a political allegory from the worlds leading modern satirist. A must read for all children.",
    "cover_pic_url"=>"http://www.radioshrine.com/IMG/jpg/animalfarm.jpg",
    "genre_id"=>7,
    "status"=>"exchangeable",
    "price"=>0,
    "picture_url"=> open("https://d35fkdjhhgt99.cloudfront.net/static/use-media-items/18/17176/full-569x621/56702e4e/animalfarm569_1.jpeg?resolution=0")
  },

  {"title"=>"Maus",
    "user_id"=>jasper.id,
    "author"=>"Art Spiegelman",
    "isbn"=>"9780141014081",
    "description"=>"Maus is a haunting tale within a tale. Vladek's harrowing story of survival is woven into the author's account of his tortured relationship with his aging father. Against the backdrop of guilt brought by survival, they stage a normal life of small arguments and unhappy visits. This astonishing retelling of our century's grisliest news is a story of survival, not only of Vladek but of the children who survive even the survivors.",
    "cover_pic_url"=>"http://t1.gstatic.com/images?q=tbn:ANd9GcQkOngJIfYRV0ecUSAKdpPSsn-h3k1mwCeulz9H1Iw0sS3jLIRd",
    "genre_id"=>10,
    "status"=>"exchangeable",
    "price"=>0,
    "picture_url"=> open("https://www.baumanrarebooks.com/BookImages/79066.jpg")
  },

  {"title"=>"A Clockwork Orange",
    "user_id"=>samuelbrown.id,
    "author"=>"Anthony Burgess",
    "isbn"=>"9780141037226",
    "description"=>"In Anthony Burgess's nightmare vision of the future, where criminals take over after dark, the story is told by the central character, Alex, who talks in a brutal invented slang that brilliantly renders his and his friends' social pathology. A Clockwork Orange is a frightening fable about good and evil, and the meaning of human freedom. When the state undertakes to reform Alex—to redeem him—the novel asks, At what cost?",
    "cover_pic_url"=>"https://s-media-cache-ak0.pinimg.com/236x/79/ae/60/79ae6051c6af8ab7edb0cf0e7a2dd116.jpg",
    "genre_id"=>7,
    "status"=>"exchangeable",
    "price"=>0,
    "picture_url"=> open("http://4.bp.blogspot.com/-uK6ajHSGyD8/VkediDE-coI/AAAAAAAAMv4/0erY1YD3dFk/s1600/FrontMockUp.jpg")
  },

  {"title"=>"One Flew Over the Cuckoo's Nest",
    "user_id"=>samuelbrown.id,
    "author"=>"Ken Kesey",
    "isbn"=>"9780143105022",
    "description"=>"In this classic novel, Ken Kesey’s hero is Randle Patrick McMurphy, a boisterous, brawling, fun-loving rebel who swaggers into the world of a mental hospital and takes over. A lusty, life-affirming fighter, McMurphy rallies the other patients around him by challenging the dictatorship of Nurse Ratched. He promotes gambling in the ward, smuggles in wine and women, and openly defies the rules at every turn. But this defiance, which starts as a sport, soon develops into a grim struggle, an all-out war between two relentless opponents: Nurse Ratched, backed by the full power of authority, and McMurphy, who has only his own indomitable will.",
    "cover_pic_url"=>"https://upload.wikimedia.org/wikipedia/en/2/26/One_Flew_Over_the_Cuckoo's_Nest_poster.jpg",
    "genre_id"=>8,
    "status"=>"exchangeable",
    "price"=>0,
    "picture_url"=> open("http://payload61.cargocollective.com/1/5/161332/3522233/One-flew-over-the-cuckoos-nest.jpg")
  },

  { "title"=>"The Unbearable Lightness of Being",
    "user_id"=>samuel.id,
    "author"=>"Milan Kundera",
    "isbn"=>"9783837130980",
    "description"=>"A young woman in love with a man torn between his love for her and his incorrigible womanizing; one of his mistresses and her humbly faithful lover—these are the two couples whose story is told in this masterful novel. In a world in which lives are shaped by irrevocable choices and by fortuitous events, a world in which everything occurs but once, existence seems to lose its substance, its weight. Hence, we feel not only as the consequence of our pristine actions but also in the public sphere, and the two inevitably intertwine.",
    "cover_pic_url"=>"http://www.chungkong.nl/wp-content/uploads/2015/01/No408-My-The-Unbearable-Lightness-of-Being-minimal-movie-poster-720px.jpg",
    "genre_id"=>3,
    "status"=>"exchangeable",
    "price"=>0,
    "picture_url"=> open("http://www.graphicdesignand.com/images/uploads/content/AyVCo_7CYAAKGLa.jpg")
  },

  { "title"=>"The Complete Tales of Winnie-The-Pooh",
    "user_id"=>jasper.id,
    "author"=>"A. A. Milne",
    "isbn"=>"0525457232321",
    "description"=>"When Christopher Robin asks Pooh what he likes doing best in the world, Pooh says, after much thought, 'What I like best in the whole world is Me and Piglet going to see You, and You saying 'What about a little something?' and Me saying, 'Well, I shouldn't mind a little something, should you, Piglet,' and it being a hummy sort of day outside, and birds singing.",
    "cover_pic_url"=>"https://i5.walmartimages.com/asr/6fbc9121-979a-405a-92bd-9148495f4935_1.e11b5b33c20b5187c32593ceea4ed5d7.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF",
    "genre_id"=>6,
    "status"=>"exchangeable",
    "price"=>0,
    "picture_url"=> open("https://images-na.ssl-images-amazon.com/images/I/51-plsIRvtL.jpg")
  },

  { "title"=>"How to Win Friends and Influence People",
    "user_id"=>gregory.id,
    "author"=>"Dale Carnegie",
    "isbn"=>"9781926985015",
    "description"=>"You can go after the job you want... and get it! You can take the job you have... and improve it! You can take any situation you're in... and make it work for you! Simon & Schuster Audio is proud to present one of the best-selling books of all time, Dale Carnegie's perennial -- presented here in its entirety on 8 cassettes. For over 60 years the rock-solid, time-tested advice in this audiobook has carried thousands of now-famous people up the ladder of success in their business and personal lives. With this truly phenomenal audiobook, learn: The six ways to make people like you The twelve ways to win people to your way of thinking The nine ways to change people without arousing resentment And much, much more!",
    "cover_pic_url"=>"http://www.scottsavage.net/wp-content/uploads/2013/03/how-to-win-friends-and-influence-people.jpg",
    "genre_id"=>5,
    "status"=>"exchangeable",
    "price"=>0,
    "picture_url"=> open("http://www.davidairey.com/images/books/how-to-win-friends.jpg")
  },

  { "title"=>"Pierre et Jean",
    "user_id"=>samuelbrown.id,
    "author"=>"Guy de Maupassant",
    "isbn"=>"9788492720071",
    "description"=>"Tout les oppose. Alors que Jean est blond, calme, doux, de caractère égal, Pierre est noir, emporté, rancunier, exalté. Tant que rien n'ébranle l'équilibre familial, les deux frères mènent une vie apparemment paisible. Mais lorsqu'un ami de la famille lègue toute sa fortune à Jean, la jalousie que Pierre nourrit pour son frère cadet éclate au grand jour. Il enquête alors pour découvrir les raisons de cet incompréhensible héritage, au risque de sacrifier son bonheur... Célèbre tant pour le récit que pour sa préface conçue comme une réflexion sur le roman, cette oeuvre naturaliste est une pièce maîtresse de l'oeuvre de Maupassant.",
    "cover_pic_url"=>"https://images-na.ssl-images-amazon.com/images/I/51q-qxq8L1L._SX301_BO1,204,203,200_.jpg",
    "genre_id"=>7,
    "status"=>"exchangeable",
    "price"=>0,
    "picture_url"=> open("http://www.edition-originale.com/media/h-1200-maupassant_guy-de_pierre-et-jean_1888_edition-originale_autographe_3_28873.jpg")
  },

  { "title"=>"His Dark Materials: Northen Lights",
    "user_id"=>samuel.id,
    "author"=>"Philip Pullman",
    "isbn"=>"9789044606843",
    "description"=>"Lyra is rushing to the cold, far North, where witch clans and armored bears rule. North, where the Gobblers take the children they steal--including her friend Roger. North, where her fearsome uncle Asriel is trying to build a bridge to a parallel world. Can one small girl make a difference in such great and terrible endeavors? This is Lyra: a savage, a schemer, a liar, and as fierce and true a champion as Roger or Asriel could want. But what Lyra doesn't know is that to help on of them will be to betray the other... A masterwork of storytelling and suspense, Philip Pullman's award-winning The Golden Compass is the first in the His Dark Materials series, which continues with The Subtle Knife and The Amber Spyglass.",
    "cover_pic_url"=>"https://turnthepageyabookblog.files.wordpress.com/2011/06/northern_lights1.jpg",
    "genre_id"=>1,
    "status"=>"exchangeable",
    "price"=>0,
    "picture_url"=> open("https://ihugmybooks.files.wordpress.com/2012/10/thcavp5whz.jpg")
  },

  { "title"=>"Republic",
    "user_id"=>jasper.id,
    "author"=>"Plato",
    "isbn"=>"9780758320209",
    "description"=>"Plato's most famous work and one of the most important books ever written on the subject of philosophy and political theory, 'The Republic' is a fictional dialogue between Socrates and other various Athenians and foreigners which examines the meaning of justice. Written in approximately 380 BC, 'The Republic' also discusses Plato's 'Theory of Forms', the nature of the philosopher, the conflict between philosophy and poetry, and the immortality of the soul. An essential read for any student of philosophy or political science, is a monumental work of antiquity, which forms the foundation for much of our modern policy.",
    "cover_pic_url"=>"https://westmichigandad.files.wordpress.com/2011/07/plato-the-republic.jpg",
    "genre_id"=>10,
    "status"=>"exchangeable",
    "price"=>0,
    "picture_url"=> open("https://images-na.ssl-images-amazon.com/images/I/51PbkEtPSyL._SX345_BO1,204,203,200_.jpg")
  },

  { "title"=>"Le Petit Prince",
    "user_id"=>samuelbrown.id,
    "author"=>"Antoine de Saint-Exupéry",
    "isbn"=>"9788677190040",
    "description"=>"Le récit raconte la rencontre entre un aviateur, dont l´avion tombe en panne au bel milieu du désert du Sahara et, pendant qu´il essaie de le réparer, un petit garçon s´approche de lui et lui demande de dessiner un mouton. C´est ainsi que commence un des livres les plus humains et les plus touchants qu´un lecteur peut espérer trouver dans son expérience en tant que tel.",
    "cover_pic_url"=>"https://blogs.scientificamerican.com/literally-psyched/files/2012/03/Le-Petit-Prince.jpg",
    "genre_id"=>6,
    "status"=>"exchangeable",
    "price"=>0,
    "picture_url"=> open("http://blog.shopwritersbloc.com/images/Le_Petit_Prince_Journal.jpg")
  },

  { "title"=>"The Picture of Dorian Gray",
    "user_id"=>samuelbrown.id,
    "author"=>"Oscar Wilde",
    "isbn"=>"9781619490581",
    "description"=>"In this celebrated work, his only novel, Wilde forged a devastating portrait of the effects of evil and debauchery on a young aesthete in late-19th-century England. Combining elements of the Gothic horror novel and decadent French fiction, the book centers on a striking premise: As Dorian Gray sinks into a life of crime and gross sensuality, his body retains perfect youth and vigor while his recently painted portrait grows day by day into a hideous record of evil, which he must keep hidden from the world. For over a century, this mesmerizing tale of horror and suspense has enjoyed wide popularity. It ranks as one of Wilde's most important creations and among the classic achievements of its kind.",
    "cover_pic_url"=>"http://mymood.altervista.org/learning/images/stories/picture-of-dorian-gray.jpg",
    "genre_id"=>7,
    "status"=>"exchangeable",
    "price"=>0,
    "picture_url"=> open("http://prodimage.images-bn.com/pimages/9781435129757_p0_v1_s1200x630.jpg")
  },

  { "title"=>"Siddhartha",
    "user_id"=>gregory.id,
    "author"=>"Hermann Hesse",
    "isbn"=>"9788401498794",
    "description"=>"In the novel, Siddhartha, a young man, leaves his family for a contemplative life, then, restless, discards it for one of the flesh. He conceives a son, but bored and sickened by lust and greed, moves on again. Near despair, Siddhartha comes to a river where he hears a unique sound. This sound signals the true beginning of his life -- the beginning of suffering, rejection, peace, and, finally, wisdom.",
    "cover_pic_url"=>"http://d28hgpri8am2if.cloudfront.net/book_images/cvr9781416561484_9781416561484_hr.jpg",
    "genre_id"=>5,
    "status"=>"exchangeable",
    "price"=>0,
    "picture_url"=> open("https://www.yourprops.com/movieprops/original/yp56c7acd84218d2.29948459/The-Flash-Hunter-Zolomon-s-Siddhartha-Book-1.jpg")
  }

]

book_params.each do |params|
  PhysicalBook.create!(params)
end

