class Product < ApplicationRecord

  # List of allowable categories
  CATEGORIES = ['Men', 'Women', 'Case']
  # attr_accessor :picture_file_name
  mount_uploader :picture, PictureUploader

  #scopes
  scope :cart,   -> {where(cart: true)}
  scope :need_reorder, -> {where('inventory < 20')}
  scope :alphabetical, -> {order(:name)}
  scope :mens, -> {where("category = 'Men' ")}
  scope :womens, -> {where("category = 'Women' ")}
  scope :cases, -> {where("category = 'Case' ")}

  scope :category, ->{(order(:category))}


  scope :for_price, ->(price){where("price >= ? AND price < ?", price-10, price)}

  #validations
  validates_presence_of :name, :weight, :description, :dimensions, :color, :category
  validates_inclusion_of :category, in: CATEGORIES, message: "is not an option"
  # validates_numericality_of :inventory, only_integer: true, greater_than_or_equal_to: 0
  # validates_numericality_of :price, greater_than: 0
  # has_attached_file :picture
  # do_not_validate_attachment_file_type :picture

end
