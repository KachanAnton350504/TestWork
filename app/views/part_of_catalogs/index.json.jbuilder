json.array!(@part_of_catalogs) do |part_of_catalog|
  json.extract! part_of_catalog, :id, :title, :description
  json.url part_of_catalog_url(part_of_catalog, format: :json)
end
