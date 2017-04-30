module Contexts
  module Products

    def create_products
      @lhbw = FactoryGirl.create(:product)
    end

    def destroy_products
      @lhbw.delete
    end