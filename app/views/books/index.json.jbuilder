json.array!(@books) do |book|
  json.extract! book, :id, :name, :image, :status, :vendor_code, :weight, :price, :series, :subjects, :limit_age, :time_status, :description_product, :description_book
  json.url book_url(book, format: :json)
end
