class Product < ApplicationRecord

  # List of allowable categories
  CATEGORIES = ['Men\'s', 'Women\'s', 'Kid\'s']

 
  mount_uploader :picture, PictureUploader
  #scopes
  scope :cart,   -> {where(cart: true)}
  scope :need_reorder, -> {where('inventory < 20')}
  scope :alphabetical, -> {order(:name)}
  scope :mens, -> {where("categories = 'Men\'s' ")}
  scope :womens, -> {where("categories = 'Women\'s' ")}
  scope :kids, -> {where("categories = 'Kid\'s' ")}

  #validations
  validates_presence_of :name, :weight, :description, :dimensions, :color, :category
  validates_inclusion_of :category, in: CATEGORIES, message: "is not an option"
  # validates_numericality_of :inventory, only_integer: true, greater_than_or_equal_to: 0
  # validates_numericality_of :price, greater_than: 0

end
