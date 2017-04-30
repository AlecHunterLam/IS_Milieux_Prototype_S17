class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.float :weight
      t.string :dimensions
      t.string :color
      t.string :category

      t.timestamps
    end
  end
end
