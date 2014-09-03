json.array!(@moves) do |move|
  json.extract! move, :id, :direction, :room_id, :destination_id
  json.url move_url(move, format: :json)
end
