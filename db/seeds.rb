# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
  User.create!(name: Faker::Name.name, email: Faker::Internet.email, password_digest: Faker::Internet.password(6),
    street: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state_abbr,
    zip: Faker::Address.zip_code, phone: Faker::PhoneNumber.phone_number)
end

users = User.all


Product.create!(user_id: 1, name: "Small Ottoman", description: "Small, perfect for putting your feet on.",
  yardage: 2, fabric_type: "organic cotton sateen", shipping: 12.00, price: 32.50)

Product.create!(user_id: 1, name: "Large Ottoman", description: "For when you have a lot of legs to prop up.",
  yardage: 4, fabric_type: "organic cotton sateen", shipping: 18.00, price: 54.00)

Product.create!(user_id: 2, name: "Furry Track Suit Jacket", description: "When you want to be comfortable and a little fuzzy, you need this zippy jacket.",
  yardage: 2, fabric_type: "minky", shipping: 6.00, price: 37.00)

Product.create!(user_id: 2, name: "Furry Track Suit Pants", description: "Was your furry track suit jacket not enough? Purchase the matching pants to make it a set.",
  yardage: 2, fabric_type: "minky", shipping: 6.00, price: 35.00)

Product.create!(user_id: 3, name: "Set of Five Dinner Napkins", description: "A set of five matching resuable napkins for whatever special occasion you have in mind.",
  yardage: 1, fabric_type: "basic combed cotton", shipping: 2.00, price: 15.00)

Product.create!(user_id: 3, name: "5 inch wristlet with ID pocket", description: "Use it as a purse or wallet! Small enough for the essentials and then some.",
  yardage: 1, fabric_type: "eco canvas", shipping: 3.00, price: 18.00)

products = Product.all

Image.create!(product_id: 1, image_url: "http://photo.foter.com/photos/pi/241/upholstered-small-ottoman-made-from-plastic-milk-crate.jpg")
Image.create!(product_id: 2, image_url: "http://www.daryadim.com/wp-content/uploads/2015/09/fromglasgowwithlove-just-another-wordpress-site-page-36-large-upholstered-ottoman.jpg")
Image.create!(product_id: 3, image_url: "http://www.tofebruary.com/images/803.jpg")
Image.create!(product_id: 4, image_url: "http://www.craftfu.mikania.com/images/fugfriday/cookiepants.jpg")
Image.create!(product_id: 5, image_url: "http://thegirlinspired.com/wp-content/uploads/2013/11/How-to-Sew-Dinner-Napkins-15.jpg")
Image.create!(product_id: 6, image_url: "http://cdn.shopify.com/s/files/1/0432/0977/products/il_570xn_231686993.png?v=1424382058")

images = Image.all
