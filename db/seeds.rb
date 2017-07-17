# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

fakeUser_list = [
  ["Albert E. Salazar", "AlbertESalazar@teleworm.us"],
  ["Eric S. Gonzalez", "EricSGonzalez@jourrapide.com"],
  ["Robert C. Gonzalez", "Robert C. Gonzalez"],
  ["Charles K. McAfee", "CharlesKMcAfee@rhyta.com"],
  ["Ronald E. Graves", "RonaldEGraves@jourrapide.com"],
  ["David F. Place", "DavidFPlace@rhyta.com"],
  ["Dana N. Converse", "DanaNConverse@rhyta.com"],
  ["Michael V. Kaplan", "MichaelVKaplan@jourrapide.com"],
  ["Juan E. Dennard", "JuanEDennard@teleworm.us"],
  ["Daniel C. Marshall", "DanielCMarshall@rhyta.com"],
]

  fakeUser_list.each do |name, email|
    User.create( name: name, email: email )
  end

  website_list = [
    "http://news.mit.edu/",
    "http://www.bbc.com/",
    "http://www.nba.com/news",
    "http://time.com/",
    "https://www.nytimes.com",
    "https://www.washingtonpost.com",
    "https://www.forbes.com",
    "https://www.reuters.com",
    "http://www.npr.org/sections/arts/",
    "http://earmilk.com/",
    "https://hypebeast.com/",
    "http://www.sun-sentinel.com/",
    "http://www.siliconera.com/",
    "https://techcrunch.com",
    "http://www.mirror.co.uk/",
    "http://www.thefader.com/",
    "http://www.factmag.com/",
    "https://www.engadget.com/",
    "https://www.theguardian.com/uk",
    "http://kotaku.com/",
    "http://lifehacker.com/",
    "https://www.wired.com/",
    "http://www.pcgamer.com/",
    "http://thenextdigit.com/",
    "http://comicbook.com/",
    "http://www.cinemablend.com/",
    "http://heavy.com/",
    "https://www.androidheadlines.com/",
    "http://www.dailystar.co.uk/tech/gaming/",
    "http://www.deccanchronicle.com/technology/",
    "https://betanews.com/",
    "http://mashable.com/",
    "http://gadgets.ndtv.com/",
    "http://variety.com/",
    "http://www.eonline.com/news/",
    "http://www.hollywoodreporter.com/",
    "https://www.theverge.com/",
    "http://www.vanityfair.com/hollywood/",
    "http://www.latimes.com/entertainment/",
    "http://www.al.com/news/",
    "http://www.antimusic.com/news/",
    "https://www.usatoday.com/",
    "http://people.com/",
    "http://www.espn.com/",
    "http://mmajunkie.com/",
    "http://bleacherreport.com/",
    "http://profootballtalk.nbcsports.com/2017/",
    "http://www.foxsports.com/",
    "https://www.si.com/tennis/2017/",
    "http://www.huffingtonpost.com/",
    "https://www.space.com/",
    "http://www.wfaa.com/",
  ]

  website_list.each do |address|
    Bookmark.create( address: address )
  end
