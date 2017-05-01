class HomeController < ApplicationController
  def index
  end

  def about
  end

  def contact
  end

  def data
  end

  def information
  end

  def cart
    @ordered_items = Product.all.cart
  end

end
