namespace :db do
  desc "Erase and fill database"
  # creating a rake task within db namespace called 'populate'
  # executing 'rake db:populate' will cause this script to run
  task :populate => :environment do
    # Docs at: http://faker.rubyforge.org/rdoc/
    # require 'faker'
    require 'factory_girl_rails'
    
    # Step 0: drop old databases and rebuild
    Rake::Task['db:drop'].invoke
    Rake::Task['db:create'].invoke
    Rake::Task['db:migrate'].invoke
    Rake::Task['db:test:prepare'].invoke

    lhbw = Product.create(name: "Leather Hybrid Bifold Wallet",
      description: "Best of Both Worlds: super-thin top-grain leather on the outside and our very special ultra-thin nylon microfiber on the inside is still doing all the work. This leather exterior bifold variation features enough unique card slots, five exactly, to access all those many frequently used cards yet with two large extra-wide pockets to store all those cards you have to carry but hardly use. Our bifold's card pockets are extra-wide so you can still fill without overfilling. Plus, as always, the interior is lined with our non-slip backing to prevent your valuables from sliding out even after you’ve dropped this ultra-thin leather bifold wallet yet again in the lunch line… Holds 20-25 credit cards plus all your $100 dollar bills. $26.95",
      weight: 120,
      dimensions: "4.5 x 3.5",
      color: "black",
      category: "Men",
      cart: false,
      inventory: 100,
      picture: File.open(File.join(Rails.root, 'app/assets/images/lhbw.jpg')),
      price: 26.95)
    ttw = Product.create(name: 'Trixie Trifold Wallet',
      description: "This is almost a cross between the high capacity of our Monte Cougar wallet and an expanded version of our regular tri-fold wallet but it leans toward the tri-fold wallet side making it more compact. A good mid-sized wallet, this all-purpose tri-fold wallet holds about 25-30 plastic cards with two deep sections for your plethora of $100 bills, Whole Foods coupons and Saks Fifth Avenue receipts. The zippered compartment on the back of this tri-fold wallet is roomy enough for a large handful of change, and the small magnetic closure keeps the whole wallet securely shut when it's being jostled around in your bag or bouncing around on the bottom of your butt (yes it fits in male back pockets easily also). Crafted from ultra-thin, durable, machine-washable, nylon micro-fiber. P.s. trivia, Trixie was Speed Racer's hot girlfriend.",
      weight: 104,
      dimensions: "5 x 4",
      color: "purple",
      category: "Women",
      cart: false,
      inventory: 140,
      picture: File.open('app/assets/images/ttw.jpg'),
      price: 25.50)
    rbbw = Product.create(name: 'RFID Blocking Bifold Wallet',
      description: "Like a suit of armor, our RFID blocking bi-fold wallet is a feat of design. Our proprietary nylon microfiber keeps this wallet thin and a layer of RFID blocking material inside the wallet protects you from would-be identity thieves. This machine-washable nylon bifold is one versatile, sporty wallet. Full-sized billfold area and card pockets are lined with non-slip interior to prevent cards/cash from falling out. Capacity: about 20-25 plastic cards plus cash.",
      weight: 123,
      dimensions: "4.5 x 4",
      color: "black",
      category: "Men",
      cart: false,
      inventory: 200,
      picture: File.open('app/assets/images/rbbw.jpg'),
      price: 35.95)
    bpc = Product.create(name: 'Black Metallic Power Card Ultra Thin Charger',
      description: "Hours of extra use for your phone. Universal Works with iPhones, mobile phones, iPods, speakers and more via USB cable. Charge level varies per device. Card Size The lightest and thinnest (5mm) in the world Fits perfectly in your Big Skinny wallet!",
      weight: 123,
      dimensions: "3.5 x 2.25",
      color: "Case",
      category: "Men",
      cart: false,
      inventory: 200,
      picture: File.open('app/assets/images/bpc.png'),
      price: 40.00)
    rblwbz = Product.create(name: 'RFID Blocking Leather World Bifold With Zipper',
      description: "World traveler, this is the wallet for you! Our most popular international wallet is now lined with RFID blocking technology to keep your information safe. This model accommodates international currency and features a handy exterior coin pocket. Crafted from durable, top-grain cowhide leather on the exterior and ultra-thin, lightweight nylon microfiber on the interior [the best of both Worlds]. Our extra wide card pockets make it convenient to store a few cards in each slot and make it easy to grab what you need. The card pockets and billfold are all lined with a non-slip interior to help prevent your goods from succumbing to gravity when you're scaling a building. This is most certainly the wallet James Bond would choose.",
      weight: 141,
      dimensions: "4.25 x 4",
      color: "black",
      category: "Men",
      cart: false,
      inventory: 10,
      picture: File.open('app/assets/images/rblwbz.jpg'),
      price: 53.95)
    rbnpmsw = Product.create(name: 'RFID Blocking Nylon Plus-sized Myphone Wallet',
      description: "Who says bigger isn't better? Certainly not the cell phone designers. Our plus-sized MyPhone wallet, now also available with RFID protection [which helps keep your data safe!] offers all the same features as our regular Myphone wallet, but with extra room for your super sized smartphones and cases. Big enough to fit Galaxy S3, Galaxy Note, Iphone 5 and most Otterbox cases.",
      weight: 141,
      dimensions: "6 x 4",
      color: "blue",
      category: "Women",
      cart: false,
      inventory: 15,
      picture: File.open('app/assets/images/rbnpmw.jpg'),
      price: 47.95)
    pcutc = Product.create(name: 'Patterned Power Card Ultra Thin Charger',
      description: "Universal Works with iPhones, mobile phones, iPods, speakers and more via USB cable. Charge level varies per device. Card Size The lightest and thinnest (5mm) in the world Fits perfectly in your Big Skinny wallet! LED button Indicates power level",
      weight: 101,
      dimensions: "3.5 x 2.25",
      color: "Colorful",
      category: "Case",
      cart: false,
      inventory: 12,
      picture: File.open('app/assets/images/pcutc.png'),
      price: 35.00)
    rccs = Product.create(name: 'RFID Credit Card Sleeve',
      description: "Credit cards that contain small RFID chips can be scanned by thieves to steal your data. Help protect your plastic with our RFID credit card sleeves. It's a cheap way to ward off credit card data theft. Of course, to be 100 percent staff from thieves scanning RFID data or stealing your cards outright, leave them locked up at home. But when you must bring your cards with you, RFID card sleeves add extra security.",
      weight: 20,
      dimensions: "4 x 2.25",
      color: "Striped",
      category: "Case",
      cart: false,
      inventory: 50,
      picture: File.open('app/assets/images/rccs.jpg'),
      price: 3.99)
    rps = Product.create(name: 'RFID Passport Sleeve',
      description: "Protect your passport with our RFID passport sleeve from Big Skinny. Thieves can scan the RFID chip on your passport and steal your information. Our passport sleeve will help prevent that, and it's designed to accommodate today's thicker passports. Add it to your purchase of our super-secure passport holder/traveler wallet.",
      weight: 25,
      dimensions: "6 x 3.75",
      color: "Striped",
      category: "Case",
      cart: false,
      inventory: 5,
      picture: File.open('app/assets/images/rps.jpg'),
      price: 4.99)
    msw = Product.create(name: 'Mini Stretch Wallet',
      description: "Our Mini Stretch card holder from Big Skinny is winning rave reviews for its superior quality and super-thin construction. Scroll down to read love letters from our customers for this awesome stretchy wallet. It's made of incredibly thin elastic that wraps around your cards to keep them from slipping out. Stash up to 10 plastic cards and a little folding money into a pocket wallet that measures only 3 ½ inches by 2 3/16 inches.",
      weight: 25,
      dimensions: "3.5 x 2.5",
      color: "Brown",
      category: "Case",
      cart: false,
      inventory: 60,
      picture: File.open('app/assets/images/msw.jpg'),
      price: 8.50)
    tch = Product.create(name: 'Thin Card Holder',
      description: "Fill it with 25 full-size plastic cards and cash if you want and it will still fit in your jogging suit or your tiny cell phone pocket in your new Brooks Brothers winter coat. Three pockets: Extra-wide front ID pocket for flashing folks at all those annoying airport checkpoints, an extra-wide pocket on the inside for frequently used cards and a catch-all accordion pocket for all those cards you rarely use but must carry. After stuffing your cards in, there's still room for your folded cash and receipts as well as an extra interior pocket for extra special items. Thinner and lighter than any leather you'll ever find. Holds 25+ full-size plastic cards and pockets are wide enough for business cards.",
      weight: 60,
      dimensions: "4 x 2.75",
      color: "Red",
      category: "Case",
      cart: false,
      inventory: 60,
      picture: File.open('app/assets/images/tch.jpg'),
      price: 12.50)
    rbns = Product.create(name: 'RFID Blocking Nylon Slimvelope',
      description: "Our sleek clutch-like billfold wallet is a modified version of the classic women's long wallet - but more clever of course! Our best-selling Slimvelope is now also available with RFID blocking material to help prevent data thieves from getting your information. There are 3 long sections for cash, receipts, etc. Pockets and billfold are lined with a non-slip interior to prevent your goods from succumbing to gravity. Our clever divide-and-conquor design strategy keeps your items organized in a flat plane, instead of stacked on top of each other. Stays flat no matter what you add to it, even when the large coin section on the reverse is full! Neat little magnetic snap closure is strong enough to keep your wallet closed even when it's jostled around in your bag. Crafted from machine-washable nylon microfiber.",
      weight: 230,
      dimensions: "7.5 x 4",
      color: "Graphite Cobble",
      category: "Women",
      cart: false,
      inventory: 60,
      picture: File.open('app/assets/images/rbns.jpg'),
      price: 47.95)
    lpc = Product.create(name: 'Leather Panther Clutch',
      description: "Our Panther leather clutch is smart and stunning, which is why we're collecting so many 'love it' letters from fans. This popular addition to our line of ultra-slim women's clutches and wallets at Big Skinny is a combination clutch and wallet. The exterior is premium super soft leather, and the interior is our famed lightweight nylon material with no-slip grip coatings inside each purse pocket.",
      weight: 420,
      dimensions: "7.5 x 4.5",
      color: "Chocolate Brown",
      category: "Women",
      cart: false,
      inventory: 60,
      picture: File.open('app/assets/images/lpc.jpg'),
      price: 36.00)
    
  end
end