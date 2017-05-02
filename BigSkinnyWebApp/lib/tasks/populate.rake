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
    
  end
end