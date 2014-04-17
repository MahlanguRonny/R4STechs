json.array!(@contacts) do |contact|
  json.extract! contact, :email, :name, :query
  json.url contact_url(contact, format: :json)
end