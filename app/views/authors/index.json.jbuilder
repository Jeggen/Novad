json.array!(@authors) do |author|
  json.extract! author, :id, :name, :country, :bio
  json.url author_url(author, format: :json)
end
