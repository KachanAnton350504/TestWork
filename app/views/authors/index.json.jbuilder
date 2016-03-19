json.array!(@authors) do |author|
  json.extract! author, :id, :name, :foto, :biography
  json.url author_url(author, format: :json)
end
