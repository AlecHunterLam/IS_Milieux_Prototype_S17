json.extract! product, :id, :name, :description, :weight, :dimensions, :color, :category, :created_at, :updated_at
json.url product_url(product, format: :json)
