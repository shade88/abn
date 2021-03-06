json.array!(@ratings) do |rating|
  json.extract! rating, :id, :user_id, :book_id, :score
  json.url rating_url(rating, format: :json)
end
