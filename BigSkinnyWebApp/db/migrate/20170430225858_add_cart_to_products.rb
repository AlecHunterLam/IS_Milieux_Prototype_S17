class AddCartToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :cart, :boolean
  end
end
