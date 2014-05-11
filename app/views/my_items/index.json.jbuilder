json.array!(@my_items) do |my_item|
  json.extract! my_item, :component_id, :caart_id
  json.url my_item_url(my_item, format: :json)
end