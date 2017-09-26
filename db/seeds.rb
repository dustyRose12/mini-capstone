# Supplier.create!([
#                           {name: "Luxury Wholesale Online", email: "luxurywholesale@hotmail.com", phone: "801-555-9878"},
#                           {name: "Whole Designer Handbags", email: "wholedesigner@gmail.com", phone: "310-555-9999"},
#                           {name: "Salehoo", email: "salehoo@gmail.com", phone: "212-989-5556"}
#                           ])

# Purse.create!([
#                        {name: "Saint Laurent LouLou Matelassé Velour Shoulder Bag", price: 1850, description: "The iconic YSL insignia centers the flap of a matelassé-stitched crossbody bag handmade in Italy from lush velour and topped with a pull-through chain strap that can be worn doubled or extended as you prefer.", supplier_id: 1},

#                       {name: "Chloé Drew Leather Shoulder Bag", price: 1850, description: "Chloé's newest take on the saddle bag is the epitome of relaxed modernity: A rounded silhouette mixes with a squared-off flap, while gleaming goldtone hardware highlights the bag's soft, grained leather.", supplier_id: 2},

#                       {name: "Burberry Medium Reversible Haymarket Check & Leather Tote", price: 1150, description: "A stylish two-in-one: turn this chic, spacious tote inside out when you want to switch from slate-blue pebbled leather to the classic Haymarket check.", supplier_id: 3},

#                       {name: "Stella McCartney Mini Falabella - Shaggy Deer' Faux Leather Tote", price: 870, description: "Impeccably crafted and impossibly versatile, this softly structured tote features gleaming chain edging, top carry handles and a longer strap, allowing you to style this bag on your arm or wear it over the shoulder. A shimmering, faux-leather exterior reflects Stella McCartney's commitment to animal-friendly fashion, while an exceptionally roomy interior holds all your everyday essentials.", supplier_id: 3},

#                       {name: "Gucci Mini Sylvie Leather Shoulder Bag", price: 1980, description: "Gucci's house web and the Sylvie web and chain mix beautifully on a playful, compact shoulder bag secured with a gilded buckle closure drawn from an archival design.", supplier_id: 1},

#                       {name: "Gucci Falena Moth Ostrich Leather Satchel", price: 18000, description: "Fresh from Gucci's magical garden-themed collection, a stunning moth in faux mother-of-pearl alights on a satchel made from ostrich leather in a creamy white hue. A house web and bamboo handle add to the statement details, while an optional strap and spacious interior lend carrying convenience to the style.", supplier_id: 1},

#                       {name: "Salvatore Ferragamo Gancio Velvet Clutch", price: 990, description: "Signature Gancio hardware makes a polished counterpoint to the softly plush velvet of this structured, Italian-crafted clutch. Carry it in hand or wear it over the shoulder using the removable box-chain strap.", supplier_id: 2}
#                       ])
                                      

# Image.create!([
#                       {purse_id: 1, url: "https://n.nordstrommedia.com/ImageGallery/store/product/Zoom/7/_101038687.jpg?crop=pad&pad_color=FFF&format=jpeg&trim=color&trimcolor=FFF&w=780&h=838&dpr=2&quality=60"},

#                       {purse_id: 2, url: "https://n.nordstrommedia.com/ImageGallery/store/product/Zoom/11/_12186751.jpg?crop=pad&pad_color=FFF&format=jpeg&trim=color&trimcolor=FFF&w=780&h=838&dpr=2&quality=60"},

#                       {purse_id: 3, url: "https://n.nordstrommedia.com/ImageGallery/store/product/Zoom/6/_101396226.jpg?crop=pad&pad_color=FFF&format=jpeg&trim=color&trimcolor=FFF&w=780&h=838&dpr=2&quality=60"},

#                       {purse_id: 4, url: "https://n.nordstrommedia.com/ImageGallery/store/product/Zoom/8/_101224208.jpg?crop=pad&pad_color=FFF&format=jpeg&trim=color&trimcolor=FFF&w=670&h=720&dpr=2&quality=60"},

#                       {purse_id: 5, url: "https://n.nordstrommedia.com/ImageGallery/store/product/Zoom/12/_100849972.jpg?crop=pad&pad_color=FFF&format=jpeg&trim=color&trimcolor=FFF&w=780&h=838&dpr=2&quality=60"},

#                       {purse_id: 6, url: "https://n.nordstrommedia.com/ImageGallery/store/product/Zoom/1/_101441341.jpg?crop=pad&pad_color=FFF&format=jpeg&trim=color&trimcolor=FFF&w=780&h=838&dpr=2&quality=60"},

#                       {purse_id: 7, url: "https://n.nordstrommedia.com/ImageGallery/store/product/Zoom/13/_101488653.jpg?crop=pad&pad_color=FFF&format=jpeg&trim=color&trimcolor=FFF&w=780&h=838&dpr=2&quality=60"}
#                       ])

# Category.create!(name: "Shoulder Bags")
# Category.create!(name: "Totes")
# Category.create!(name: "Satchels")
# Category.create!(name: "Clutches")

# CategoryPurse.create!(purse_id: 1, category_id: 1)
# CategoryPurse.create!(purse_id: 2, category_id: 1)
# CategoryPurse.create!(purse_id: 3, category_id: 2)
# CategoryPurse.create!(purse_id: 4, category_id: 2)
# CategoryPurse.create!(purse_id: 5, category_id: 1)
# CategoryPurse.create!(purse_id: 6, category_id: 3)
# CategoryPurse.create!(purse_id: 7, category_id: 4)


# this assigns a random num of random categories to each product (so you get a mix where some have 2 cats, some have 3):
# products = Product.all
# categories = Category.all

# products.each do |product|
#   categories.sample(rand(1..3)).each do |category|
#     CategoryProduct.create!(product_id: product.id, category_id: category.id)
#   end
# end

