json.array!(@store_products) do |store_product|
  json.extract! store_product, :name, :categoryid, :quantity, :supplierid, :image_url, :price
  json.url store_product_url(store_product, format: :json)
end