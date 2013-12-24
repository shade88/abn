json.array!(@notes) do |note|
  json.extract! note, :id, :book_id, :user_id, :text
  json.url note_url(note, format: :json)
end
