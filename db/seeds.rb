# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(name: "Kristine", email: "kristine@beehive.com",
  street: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state_abbr,
  zip: Faker::Address.zip_code, phone: Faker::PhoneNumber.phone_number, username: "kristine",
  password: "password", uploaded_file: File.open("#{Rails.root}/app/assets/images/kristine.jpeg"))

User.create!(name: "Ashley", email: "ashley@beehive.com",
  street: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state_abbr,
  zip: Faker::Address.zip_code, phone: Faker::PhoneNumber.phone_number, username: "ashley",
  password: "password", uploaded_file: File.open("#{Rails.root}/app/assets/images/ashley.jpeg"))

User.create!(name: "McJosh", email: "mcjosh@beehive.com",
  street: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state_abbr,
  zip: Faker::Address.zip_code, phone: Faker::PhoneNumber.phone_number, username: "mcjosh",
  password: "password", uploaded_file: File.open("#{Rails.root}/app/assets/images/mcjosh.png"))

User.create!(name: "Farmer Josh", email: "farmerjosh@beehive.com",
  street: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state_abbr,
  zip: Faker::Address.zip_code, phone: Faker::PhoneNumber.phone_number, username: "farmerjosh",
  password: "password", uploaded_file: File.open("#{Rails.root}/app/assets/images/farmerjosh.png"))

product_names = ["Authulf", "Hrafnkel", "Hreitharr", "Sighvat", "Audbjorg", "Frostulf", "Armod", "Runolf",
    "Thorve", "Gudny", "Ranveig", "Ragnhild", "Halldora", "Katla", "Kadlin", "Svala", "Ragnhild", "Thraslaug",
    "Hedinfrid", "Greiland"]

Product.create!(user_id: 1, name: "Diary",
    description: "This book is great for writing your secrets or shopping lists in. The best around.",
    yardage: 2, fabric_type: "Organic Cotton Sateen", shipping: 12.00, price: 32.50)

Product.create!(user_id: 1, name: "Reading Chair",
    description: "Need a place to sit back and read a book?  Try this super comfortable chair.",
    yardage: 4, fabric_type: "Faux Suede", shipping: 18.00, price: 54.00)

Product.create!(user_id: 1, name: "Single-Panel Drape",
    description: "Do you typically disregard the people outside of your house?  This drape will allow you to never know they existed.",
    yardage: 2, fabric_type: "Basic Combed Cotton", shipping: 6.00, price: 37.00)

Product.create!(user_id: 1, name: "Small Elephant Plush",
    description: "Tiny elephants are making a comeback. Don't miss out! Get yours today!",
    yardage: 2, fabric_type: "Minky", shipping: 6.00, price: 35.00)

Product.create!(user_id: 2, name: "Peasant Dress",
    description: "Do you love wearing clothes? This dress was made for you.",
    yardage: 1, fabric_type: "Basic Combed Cotton", shipping: 2.00, price: 15.00)

Product.create!(user_id: 2, name: "Neck Tie",
    description: "A tie for your neck.",
    yardage: 1, fabric_type: "Organic Cotton Sateen", shipping: 3.00, price: 18.00)

Product.create!(user_id: 2, name: "Apron",
    description: "An apron to keep yourself clean in the kitchen. Who knows what might happen in there.",
    yardage: 2, fabric_type: "Eco Canvas", shipping: 3.00, price: 19.00)

Product.create!(user_id: 2, name: "Child's Button-Up Shirt",
    description: "Size 2T. Different buttons available on request.",
    yardage: 1, fabric_type: "Cotton Lawn", shipping: 4.00, price: 20.00)

Product.create!(user_id: 3, name: "Makeup Case",
    description: "6-inch long makeup case. Perfect for brushes, eyeshadows, liners, etc.",
    yardage: 1, fabric_type: "Organic Cotton Sateen", shipping: 2.00, price: 15.00)

Product.create!(user_id: 3, name: "Lounge Pants",
    description: "Unisex lounge pants with pockets. One size fits all.",
    yardage: 2, fabric_type: "Cotton Lawn", shipping: 5.00, price: 22.00)

Product.create!(user_id: 3, name: "Purse",
    description: "A tiny hand-held purse to keep all your secrets/necessities in.",
    yardage: 1, fabric_type: "faux suede", shipping: 4.00, price: 18.00)

Product.create!(user_id: 3, name: "Pillow",
    description: "Pillow; soft, rest your head on it. Perfect for sleeping or throwing at a sleeping person.",
    yardage: 1, fabric_type: "Organic Cotton Sateen", shipping: 3.00, price: 20.00)

Product.create!(user_id: 4, name: "Dog Pajamas",
    description: "Are you a dog person? No, but are you REALLY a dog person? Prove it. Get your dog some jammies.",
    yardage: 1, fabric_type: "Organic Cotton Interlock Knit", shipping: 4.00, price: 25.00)

Product.create!(user_id: 4, name: "Hair Bobbles",
    description: "Keep your hair looking fantastic with these quirky ties.",
    yardage: 1, fabric_type: "Basic Combed Cotton", shipping: 2.00, price: 7.00)

Product.create!(user_id: 4, name: "Alternative Pillow",
    description: "An alternative to your normal pillow lifestyle -- now with additional flair.",
    yardage: 1, fabric_type: "Cotton Lawn", shipping: 5.00, price: 17.00)

Product.create!(user_id: 4, name: "Pouch",
    description: "A pouch for holding things or hiding them.",
    yardage: 1, fabric_type: "Organic Cotton Sateen", shipping: 4.00, price: 15.00)

Product.create!(user_id: 1, name: "Tablet Cover",
    description: "A specially-sized soft container for your tablet.",
    yardage: 1, fabric_type: "Basic Combed Cotton", shipping: 4.00, price: 22.00)

Image.create(product_id: 1, uploaded_file: File.open("#{Rails.root}/app/assets/images/book.jpg"))
Image.create(product_id: 1, uploaded_file: File.open("#{Rails.root}/app/assets/images/book2.jpg"))

Image.create(product_id: 2, uploaded_file: File.open("#{Rails.root}/app/assets/images/chair.jpg"))
Image.create(product_id: 2, uploaded_file: File.open("#{Rails.root}/app/assets/images/chair2.jpg"))
Image.create(product_id: 2, uploaded_file: File.open("#{Rails.root}/app/assets/images/chair3.jpg"))

Image.create(product_id: 3, uploaded_file: File.open("#{Rails.root}/app/assets/images/drape.jpg"))
Image.create(product_id: 3, uploaded_file: File.open("#{Rails.root}/app/assets/images/drape2.jpg"))
Image.create(product_id: 3, uploaded_file: File.open("#{Rails.root}/app/assets/images/drape3.jpg"))

Image.create(product_id: 4, uploaded_file: File.open("#{Rails.root}/app/assets/images/elephantplush.jpg"))
Image.create(product_id: 4, uploaded_file: File.open("#{Rails.root}/app/assets/images/elephantplush2.jpg"))
Image.create(product_id: 4, uploaded_file: File.open("#{Rails.root}/app/assets/images/elephantplush3.jpg"))

Image.create(product_id: 5, uploaded_file: File.open("#{Rails.root}/app/assets/images/tetress.jpg"))
Image.create(product_id: 5, uploaded_file: File.open("#{Rails.root}/app/assets/images/tetress2.jpg"))
Image.create(product_id: 5, uploaded_file: File.open("#{Rails.root}/app/assets/images/tetress3.jpg"))

Image.create(product_id: 6, uploaded_file: File.open("#{Rails.root}/app/assets/images/tie.png"))
Image.create(product_id: 6, uploaded_file: File.open("#{Rails.root}/app/assets/images/tie2.jpg"))

Image.create(product_id: 7, uploaded_file: File.open("#{Rails.root}/app/assets/images/bunnyapron.jpg"))
Image.create(product_id: 7, uploaded_file: File.open("#{Rails.root}/app/assets/images/bunnyaprondetail.jpg"))

Image.create(product_id: 8, uploaded_file: File.open("#{Rails.root}/app/assets/images/babyshirt.jpg"))

Image.create(product_id: 9, uploaded_file: File.open("#{Rails.root}/app/assets/images/makeupbox2.jpg"))
Image.create(product_id: 9, uploaded_file: File.open("#{Rails.root}/app/assets/images/makeupcase.jpg"))

Image.create(product_id: 10, uploaded_file: File.open("#{Rails.root}/app/assets/images/pants.png"))
Image.create(product_id: 10, uploaded_file: File.open("#{Rails.root}/app/assets/images/pants2.jpg"))

Image.create(product_id: 11, uploaded_file: File.open("#{Rails.root}/app/assets/images/clutch.jpg"))

Image.create(product_id: 12, uploaded_file: File.open("#{Rails.root}/app/assets/images/difftpillow.jpg"))

Image.create(product_id: 13, uploaded_file: File.open("#{Rails.root}/app/assets/images/dogpajamas.jpg"))

Image.create(product_id: 14, uploaded_file: File.open("#{Rails.root}/app/assets/images/hairbobbles.jpg"))

Image.create(product_id: 15, uploaded_file: File.open("#{Rails.root}/app/assets/images/pillow.jpg"))

Image.create(product_id: 16, uploaded_file: File.open("#{Rails.root}/app/assets/images/pouch.jpg"))

Image.create(product_id: 17, uploaded_file: File.open("#{Rails.root}/app/assets/images/tabletpouch.jpg"))




fabrics = ["http://s3.amazonaws.com/spoonflower/public/design_thumbnails/0461/8442/Bacon_Pile_24x24_Tile_shop_thumb.png",
    "http://s3.amazonaws.com/spoonflower/public/design_thumbnails/0280/0727/egg_bacon_pattern.eps_shop_thumb.png",
    "http://s3.amazonaws.com/spoonflower/public/design_thumbnails/0437/6929/Goats_070115_Spoonflower_shop_thumb.png",
    "http://s3.amazonaws.com/spoonflower/public/design_thumbnails/0312/7314/rgoatsfrolicnavy_shop_thumb.png",
    "http://s3.amazonaws.com/spoonflower/public/design_thumbnails/0167/0984/pile_shop_thumb.png",
    "http://s3.amazonaws.com/spoonflower/public/design_thumbnails/0443/2905/zombie_green_repeat_shop_thumb.png",
    "http://s3.amazonaws.com/spoonflower/public/design_thumbnails/0165/1779/trees.pdf_shop_thumb.png",
    "http://s3.amazonaws.com/spoonflower/public/design_thumbnails/0342/6435/r2012_0601_4026_shop_thumb.png",
    "http://s3.amazonaws.com/spoonflower/public/design_thumbnails/0271/5358/rdachshund_pastel_shop_thumb.png",
    "http://s3.amazonaws.com/spoonflower/public/design_thumbnails/0424/9054/zminiaturedachshundhearts4b_shop_thumb.png",
    "http://s3.amazonaws.com/spoonflower/public/design_thumbnails/0449/4662/rFurious_Unicorn_Snowflakes_REV_shop_thumb.png",
    "http://s3.amazonaws.com/spoonflower/public/design_thumbnails/0455/5134/Pattern_sea-unicorns_seystudios_shop_thumb.png",
    "http://s3.amazonaws.com/spoonflower/public/design_thumbnails/0453/2159/autumnLeaves-02_shop_thumb.png",
    "http://s3.amazonaws.com/spoonflower/public/design_thumbnails/0455/3500/Wallpaper_shop_thumb.png",
    "http://s3.amazonaws.com/spoonflower/public/design_thumbnails/0470/5797/r0_cavan_irish_shop_thumb.png",
    "http://s3.amazonaws.com/spoonflower/public/design_thumbnails/0470/4530/r0_brooke_irish_shop_thumb.png",
    "http://s3.amazonaws.com/spoonflower/public/design_thumbnails/0470/1546/letterquilt_ed_ed_ed_shop_thumb.png",
    "http://s3.amazonaws.com/spoonflower/public/design_thumbnails/0367/0785/rr10733582_599111423544303_1472738417_n_ed_shop_thumb.png",
    "http://s3.amazonaws.com/spoonflower/public/design_thumbnails/0441/6326/SF_HT_O_shop_thumb.png",
    "http://s3.amazonaws.com/spoonflower/public/design_thumbnails/0352/4137/rrgeo_constellation_pg_shop_thumb.png"
]

10.times do
  OrderItem.create!(
      product_id: rand(1..17), order_id: rand(1..5), quantity: rand(1..3),
      fabric_design_url: fabrics.sample, order_item_status: rand(1..3),
      shipping: rand(0.0..20.0), unit_price: rand(10.00..200.00))
end

10.times do
  OrderItem.create!(
      product_id: rand(1..17), order_id: rand(6..10), quantity: rand(1..3),
      fabric_design_url: fabrics.sample, order_item_status: rand(1..3),
      shipping: 4.99, unit_price: rand(10.00..50.00))
end

10.times do
  OrderItem.create!(
      product_id: rand(1..17), order_id: rand(11..15), quantity: rand(1..3),
      fabric_design_url: fabrics.sample, order_item_status: rand(1..3),
      shipping: 4.99, unit_price: rand(10.00..50.00))
end

10.times do
  OrderItem.create!(
      product_id: rand(1..17), order_id: rand(16..20), quantity: rand(1..3),
      fabric_design_url: fabrics.sample, order_item_status: rand(1..3),
      shipping: 4.99, unit_price: rand(10.00..50.00))
end

5.times do
  Order.create!(user_id: 3)
end

5.times do
  Order.create!(user_id: 4)
end

5.times do
  Order.create!(user_id: 1)
end

5.times do
  Order.create!(user_id: 2)
end
