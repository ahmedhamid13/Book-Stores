json.extract! store_book, :id, :edition, :price, :is_available, :store_id, :book_id, :created_at, :updated_at
json.url store_book_url(store_book, format: :json)
