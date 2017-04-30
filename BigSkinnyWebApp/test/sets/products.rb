module Contexts
  module Products

    def create_products
      @big_skinny = FactoryGirl.create(:product)
    end

    def destroy_products
      @big_skinny.delete
    end