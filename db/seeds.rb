podcast_array =
  [ "Stuff You Should Know",
    "This American Life",
    "Planet Money",
    "Radiolab",
    "Freakanomics Radio",
    "The Joe Rogan Experience",
    "The Nerdist",
    "The TED Radio Hour",
    "Dan Carlin's Hardcore History",
    "Bill Burr's Monday Morning Podcast",
    "Song Exploder",
    "The Economist Radio",
    "The Tim Ferris Show",
    "Serial",
    "The Bugle",
    "99% Invisible"
  ]

draft_kings = Voucher.create! \
  title: "40\% off Draft Kings subscription",
  description: "Just enter code BURR40 at checkout",
  code: "BURR40",
  company: "Draft Kings",
  podcast: "Bill Burr's Monday Morning Podcast",
  url: "www.draftkings.com",
  expiry_date: DateTime.new(2017,rand(3..12),rand(1..30))

5.times do
  Voucher.create! \
    title: rand(0..60).to_s + "\% off " + Faker::Commerce.product_name,
    description: Faker::Lorem.sentence(3),
    code: "code " + rand(10..9999).to_s,
    company: Faker::Company.name,
    podcast: podcast_array[rand(0...podcast_array.count)],
    url: Faker::Internet.url('example.com', '/podcast.html'),
    expiry_date: DateTime.new(2017,rand(3..12),rand(1..30))
end

john = User.create! \
  email: "john@gmail.com",
  password: "123123",
  first_name: "John",
  last_name: "Ridd",
  avatar: "user.png"

will = User.create! \
  email: "will@gmail.com",
  password: "123123",
  first_name: "Will",
  last_name: "Tinney",
  avatar: "user.png"

test_user = User.create! \
  email: "test@gmail.com",
  password: "123123",
  first_name: "Test",
  last_name: "User",
  avatar: "user.png"

john.up_votes draft_kings
