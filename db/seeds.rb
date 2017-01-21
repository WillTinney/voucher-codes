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

5.times do
  Voucher.create! \
    title: Faker::Commerce.product_name,
    description: Faker::Lorem.sentence(3),
    code: "code " + rand(10..9999).to_s,
    company: Faker::Company.name,
    podcast: podcast_array[rand(0...podcast_array.count)],
    link: Faker::Internet.url('example.com', '/podcast.html'),
    expiry_date: DateTime.new(2017,rand(3..12),rand(1..30))
end
