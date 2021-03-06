json.array!(@components) do |component|
  json.extract! component, :name, :description, :image_url, :price
  json.url component_url(component, format: :json)
end