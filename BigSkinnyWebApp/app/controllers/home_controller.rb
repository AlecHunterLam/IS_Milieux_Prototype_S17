class HomeController < ApplicationController
  def index
  end

  def about
  end

  def contact
  end

  def data
    @mens = Product.mens.all.size
    @womens = Product.womens.all.size
    @cases = Product.cases.all.size
  end

  def information
  end

  def cart
    @ordered_items = Product.all.cart
  end

  def download_pdf
    send_file 'app/assets/images/schedule.pdf'
  end
end
