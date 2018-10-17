
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars', }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.destroy_all

r1 = Restaurant.create name:'Chaco Bar', summary:'Chaco Bar is known for its Yakitori, but between midday and 2pm from Wednesday to Saturday, Chaco also serves a good brothy ramen. Just make sure you get in quick – it’s sometimes limited to 30 bowls.
Though, this is not just any ramen--this is the real deal.  Owner and chef Keita Abe is from Fukuoka in Japan, the home of tonkotsu ramen.There are four flavours of ramen at Chaco Bar. Fat Soy boasts a chicken-base and is topped with melty charcoal pork chashu and a seasoned egg. Abe describes it almost like you would a tonkotsu: “It’s really strong, fatty, punchy, heavy.” Fish Salt is probably unlike anything you’ve had before, deriving from the soup known as ‘champon’, which was created in Nagasaki to feed Chinese students missing the taste of home. “Champon is not famous in the world yet,” says Abe, “This is the ramen of Nagasaki. It has lots of seafood, cabbage, and there’s pork chashu on top as well.”
The next option is Chilli Coriander. It’s made up of a base of chicken and fish broth, topped with steamed chicken thigh, seasoned egg, house-made chilli oil and Japan’s equivalent of the Szechuan pepper: the sansho pepper, which is hot and numbing. The last ramen on offer is the Yuzu Salt, which Abe describes as “elegant and in a summery style.” It’s got that sour, citrusy flavour from the yuzu, with a chicken stock base and squid tentacles on top. Plus it’s topped off with yuzu infused butter. Hello…
All of these bowls will be filled to the brim with Abe’s ramen, which he has made for him fresh, according to his own specific recipe.
', location:'Darlinghurst', opening_hours:'Wed - Sat, 11:30 - 14:30, Mon 17:30 - 21:00', vegan_option: 0, restaurant_image: "http://placekitten.com/300/300"

r2 = Restaurant.create name:'Gogyo', summary:'GOGYO was orignally founded by Shigemi Kawahara, the internationally renowned “Ramen King” of IPPUDO fame, in 2003. With stores in Kyoto, Tokyo, Nagoya, Fukuoka, and Hong Kong, Surry Hills marks the 6th location for the brand. GOGYO Surry Hills is a casual-chic Japanese ramen bar and dining space that offers guests the opportunity to “start with drinks, taste a few ‘tsumami,’ and end with ramen.”
GOGYO offers a wide selection of contemporary a la carte dishes designed to lead up to or complement the specialty ramen selection. Items from the a la carte kitchen range from shared snacks to sashimi dishes as well as robata grilled mains. GOGYO offers Kogashi-style ramen which involves a charring technique to bring out extremely fragrant and bittersweet results that can only be tasted in our establishments. Classic ramen as well as a vegetarian option are also available to cater to different preferences.
', location:'Surry Hills', opening_hours:'Mon – Fri: 12:00 - 15:00, 17:30 - 22:00, Saturday: 11:30 - 15:00, 17:30 - 22:00, Sunday: 11:30 - 15:00, 17:00 - 20:30', vegan_option: 1, restaurant_image: "http://placekitten.com/300/300"

r3 = Restaurant.create name:'Gumshara', summary:'Gumshara Ramen is brought to you by Mori Higashida, a Japanese expat who longed for authentic ramen noodles in Sydney. So he quit his day job, went back to Japan and did an apprenticeship at the famous Muteppou noodle restaurant in Kyoto. He then returned to Sydney and set-up shop in Eating World food court in 2009.
Most folks stopped by for the signature dish, tonkotsu ramen. The stock for the dish is made by simmering 120 kilograms of pork bones. Deliciously slippery ramen noodles and slices of pork are dipped into the steaming soup; a soft-boiled egg is an optional extra and becomes a meal in itself as it absorbs the thick pork broth.
Other varieties on offer include miso ramen, shoyu ramen, garlic tonkotsu ramen, tomato tonkotsu ramen and pork spare rib ramen.', location:'Haymarket', opening_hours:'Mon – Sat: 11:30 - 21:00, Sun - Mon:11:30 - 20:30', vegan_option: 0, restaurant_image: "http://placekitten.com/300/300"

r4 = Restaurant.create name:'Ichi-ban Boshi', summary:'TBC', location:'Sydney', opening_hours:'Mon – Sun: 11:00 - 22:30', vegan_option: 1, restaurant_image: "http://placekitten.com/300/300"

r5 = Restaurant.create name:'Ippudo', summary:'Ippudo menu focuses on the all-important signature ramen dishes, such as the Akamaru Shinaji, a 25-year-old recipe made from pork bones and simmered for hours to make a tonkotsu broth which is topped with miso, garlic oil, pork, black mushroom and soybean sprouts. Noodles are cooked to your liking with five levels of softness offered, which can be a little daunting for the noodle novice. If you’re looking for a real taste of Japanese ramen, Ippudo really hits the spot.', location:'Sydney', opening_hours:'Mon – Sun: 11:00 - 22:30', vegan_option: 1, restaurant_image: "http://placekitten.com/300/300"

r6 = Restaurant.create name:'Ramen Manpuku', summary:'Manpuku is adept at a variety of ramen styles. But the one you can eat everyday is gara-shoyu, a chicken-and-soy-based broth. It’s easy to see why. What it lacks in viscosity and intensity, it more than makes up for in depth of flavour. The noodles, Manpuku-made, are medium thickness and more al dente.', location:'Kingsford', opening_hours:'Tue – Sat: 11:00 - 21:30', vegan_option: 1, restaurant_image: "http://placekitten.com/300/300"

r7 = Restaurant.create name:'RaRa', summary:'They’ve imported their own noodle-making machine from Japan for fresh-as noodles every day, and head chef Scott Gault has been upskilling his ramen-making chops at Ramen Puka Puka, a popular fish-and-pork-based ramen joint in Fukuyama, Japan. Their menu will feature four omnivore soup bases (tonkotsu, chicken, shoyu and miso) and two veg/vegan options. Any meats will be ethically sourced, and they're licensed, so the drinks meny will include Japanese beers, whiskeys, umeshus, sakes, and local natural and pet-nat wines. Yum.
', location:'Redfern', opening_hours:'Tue – Sun: Lunch:12:00 - 14:30, Dinner:17:30 - 22:00', vegan_option: 1, restaurant_image: "http://placekitten.com/300/300"

r8 = Restaurant.create name:'Yasaka', summary:'TBC', location:'Sydney', opening_hours:'Mon -Sat: 11:30 - 22:00, Sun: 11:30 - 21:00', vegan_option: 1, restaurant_image: "http://placekitten.com/300/300"


puts "Created #{Restaurant.all.length} restaurants"
puts "Done!"

Image.destroy_all
i1= Image.create image:'https://www.broadsheet.com.au/media/cache/e5/28/e528f0b49d8a03089b0103082d9c9788.jpg', title:'Fat Soy'

i2= Image.create image:'http://danielfooddiary.com/wp-content/uploads/2017/10/chacobar4.jpg', title:'Yuzu Scallop'

i3= Image.create image:'http://api.ramenwithfriends.com/uploads/vendor/72177d4d.jpg', title:'Chilli Coriander'

i4= Image.create image:'https://4.bp.blogspot.com/-2QY-o946oL0/WmMTUP153GI/AAAAAAAAJ6I/wvPxJOJWSp4XasJckcXIMu90N2bJqLugQCLcBGAs/s1600/DSCF1365.jpg', title:'Tonkotsu'

i5= Image.create image:'http://ippudo.com.au/wp/wp-content/uploads/2018/02/img_cuisine.jpg', title:'Kogashi Miso'

i6= Image.create image:'https://www.broadsheet.com.au/media/cache/c3/9e/c39e245c5b77d02207a1107a7c6c4bc6.jpg', title:'Tonkotsu'

i7= Image.create image:'https://www.goodfood.com.au/content/dam/images/2/b/c/d/m/image.related.articleLeadwide.620x349.2bc4i.png/1355441303007.jpg', title:'BBQ Pork Ramen'

i8= Image.create image:'https://media-cdn.tripadvisor.com/media/photo-s/03/37/be/96/tantanmen.jpg', title:'Tan-Tan Men'

i9= Image.create image:'https://ichibanboshi.com.au/wp-content/themes/ichibanboshi/images/menu/city/shio-rahmen.jpg', title:'Shio Ramen'

i10= Image.create image:'https://cdn.vox-cdn.com/thumbor/9ZjK37hWHBDI3jJx-0gR_gi3A2M=/0x0:1862x1188/1200x800/filters:focal(757x523:1053x819)/cdn.vox-cdn.com/uploads/chorus_image/image/51771093/Screen_Shot_2016_11_10_at_9.33.47_AM.0.png', title:'Akamaru'

i11= Image.create image:'http://www.ippudoph.com/wp-content/uploads/2014/06/shiromaru.jpg', title:'Shiromaru'

i12= Image.create image:'https://tul.imgix.net/content/article/manpuku-ramen-in-sydney.jpg?auto=format,compress&w=520&h=390&fit=crop&crop=edges', title:'Miso'

i13= Image.create image:'http://api.ramenwithfriends.com/uploads/vendor/58dc95e3.jpg', title:'Tsukemen'

i14= Image.create image:'https://i1.wp.com/www.chocolatesuze.com/wp-content/uploads/2018/10/Rara-Redfern-Ramen.jpg?resize=1700%2C1130', title:'Tonkotsu'

i15= Image.create image:'http://andyquan.com/wp-content/uploads/2018/09/IMG_9401-1024x1024.jpg', title:'Tonkotsu with Black Girlic'

i16= Image.create image:'http://www.washokulovers.com/wp-content/uploads/2015/12/IMG_1499_1200x700.jpg', title:'Yasaka Ramen'

i17= Image.create image:'http://www.washokulovers.com/wp-content/uploads/2016/06/IMG_1559_1200x700.jpg', title:'Yasaka Miso Ramen'

puts "created #{Image.all.length} images"
puts "Done!"

User.destroy_all

u1 = User.create name:'Mika', email:'mika@ramen.co', password:'chicken'
u2 = User.create name:'Lisa', email:'lisa@ramen.co', password:'chicken'
u3 = User.create name:'Taro', email:'taro@ramen.co', password:'chicken'
u4 = User.create name:'George', email:'george@ramen.co', password:'chicken'
u5 = User.create name:'Karyn', email:'karyn@ramen.co', password:'chicken'

puts "Created #{User.all.length} users"


r1.images << i1 << i2 << i3
r2.images << i4 << i5
r3.images << i6 << i7
r4.images << i8 << i9
r5.images << i10 << i11
r6.images << i12 << i13
r7.images << i14<< i15
r8.images << i16 << i17

u1.restaurants << r1 << r2
u2.restaurants << r3 << r4
u3.restaurants << r5
u4.restaurants << r6 << r7
u5.restaurants << r8

u1.images << i1 << i2 <<i3
u2.images << i4 << i5 << i6 << i7
u3.images << i8 << i9
u4.images << i10 << i11 << i12 << i13
u5.images << i14 << i15 << i16 << i17
