# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Restaurant.create!(
    :name  => "The Ace",
    :address => "231A Roncesvalles Avenue, Toronto, Ontario M6R 2L6",
    :neighbourhood    => "Roncesvalles",
    :price_rating  => "$$$",
    :summary  => "The Ace is a family-friendly restaurant located on Roncesvalles Ave in Toronto. Housed in a 1950s diner, The Ace serves dinner 7 nights, lunch on weekdays, brunch on the weekends & great drinks every night.",
    :cuisine  => "Diner",
    :seats => 100
  )

Restaurant.create!(
    :name  => "The Emerson",
    :address => "1279 Bloor St W, Toronto, Ontario M6H 3Y2",
    :neighbourhood    => "Bloordale Village",
    :price_rating  => "$$",
    :summary  => "The Emerson is instantly cozy, and that's thanks in part to the casual service, and especially the obvious camaraderie you can glimpse in the open kitchen. The kitchen staff sport toques, and have friendly huddles between plating.",    
    :cuisine  => "Bar",
    :seats => 100
  )

Restaurant.create!(
    :name  => "Zocalo",
    :address => "1426 Bloor St W, Toronto, Ontario M6P 3L5",
    :neighbourhood    => "Bloordale Village",
    :price_rating  => "$$",
    :summary  => "Zocalo, another recent addition to the roster of casual restaurants in Bloordale Village, is one of those places that just feels like a neighbourhood spot. ",
    :cuisine  => "Bistro",
    :seats => 100
  )

Restaurant.create!(
    :name  => "Guu",
    :address => "398 Church Street Toronto, O.N. M5B 2A2",
    :neighbourhood    => "Downtown Core",
    :price_rating  => "$$",
    :summary  => "This first Guu in Toronto was established in the end of 2009 with a stable pride as Izakaya. The long line up in bone chilling heavily snowing nights became a legend.",
    :cuisine  => "Japanese",
    :seats => 100
  )

Restaurant.create!(
    :name  => "Messini",
    :address => "445 Danforth Ave, Toronto, ON, M4K 1P2",
    :neighbourhood    => "Danforth",
    :price_rating  => "$",
    :summary  => "Messini Authentic Gyros, located in Toronto's celebrated Greektown, has been serving up authentic Greek cuisine since 2002.",
    :cuisine  => "Greek",
    :seats => 100
  )

Restaurant.create!(
    :name  => "Mildred's Temple Kitchen",
    :address => "85 Hanna Ave #104, Toronto, ON M6K 3S3",
    :neighbourhood    => "Liberty Village",
    :price_rating  => "$$$",
    :summary  => "Mildred's Temple Kitchen opened with a heartfelt philosophy. We're here because we love food, people and the simple pleasures of life.",
    :cuisine  => "Fusion",
    :seats => 100
  )