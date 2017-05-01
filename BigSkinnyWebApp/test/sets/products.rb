module Contexts
  module Products

    def create_products
      @lhbw = FactoryGirl.create(:product)
      @ttw = FactorGirl.create(:product
        name: 'Trixie Trifold Wallet'
        description: "This is almost a cross between the high capacity of our Monte Cougar wallet and an expanded version of our regular tri-fold wallet but it leans toward the tri-fold wallet side making it more compact. A good mid-sized wallet, this all-purpose tri-fold wallet holds about 25-30 plastic cards with two deep sections for your plethora of $100 bills, Whole Foods coupons and Saks Fifth Avenue receipts. The zippered compartment on the back of this tri-fold wallet is roomy enough for a large handful of change, and the small magnetic closure keeps the whole wallet securely shut when it's being jostled around in your bag or bouncing around on the bottom of your butt (yes it fits in male back pockets easily also). Crafted from ultra-thin, durable, machine-washable, nylon micro-fiber. P.s. trivia, Trixie was Speed Racer's hot girlfriend."
        weight: 104
        dimensions: "5 x 4"
        color: "purple"
        category: "Women's'"
        cart: false
        inventory: 140
        picture: 'app/assets/images/ttw.jpg'
        price: 25.50)
      @rbbw = FactorGirl.create(:product
        name: 'RFID Blocking Bifold Wallet'
        description: "Like a suit of armor, our RFID blocking bi-fold wallet is a feat of design. Our proprietary nylon microfiber keeps this wallet thin and a layer of RFID blocking material inside the wallet protects you from would-be identity thieves. This machine-washable nylon bifold is one versatile, sporty wallet. Full-sized billfold area and card pockets are lined with non-slip interior to prevent cards/cash from falling out. Capacity: about 20-25 plastic cards plus cash."
        weight: 123
        dimensions: "4.5 x 4"
        color: "black"
        category: "Men's'"
        cart: false
        inventory: 200
        picture: 'app/assets/images/rbbw.jpg'
        price: 35.95)
      @bpc = FactorGirl.create(:product
        name: 'Black Metallic Power Card Ultra Thin Charger'
        description: "Hours of extra use for your phone. Universal Works with iPhones, mobile phones, iPods, speakers and more via USB cable. Charge level varies per device. Card Size The lightest and thinnest (5mm) in the world Fits perfectly in your Big Skinny wallet!"
        weight: 123
        dimensions: "3.5 x 2.25"
        color: "black"
        category: "Men's'"
        cart: false
        inventory: 200
        picture: 'app/assets/images/bpc.png'
        price: 40.00)
    end

    def destroy_products
      @lhbw.delete
      @ttw.delete
      @rbbw.delete
      @bpc.delete
    end