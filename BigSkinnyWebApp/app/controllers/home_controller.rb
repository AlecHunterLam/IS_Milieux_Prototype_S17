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

  def download_pdf
    send_file 'app/assets/images/schedule.pdf'
  end

  def checkout
    cart_items = Product.all.cart
    for item in cart_items do
      item.cart = false
      item.save!
    end
    redirect_to cart_path, notice: "Checked out! Thank you for Shopping with Big Skinny!"
  end
end
