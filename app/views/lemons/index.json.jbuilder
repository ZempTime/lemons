json.array!(@lemons) do |lemon|
  json.extract! lemon, :id, :name, :description
  json.url lemon_url(lemon, format: :json)
end
