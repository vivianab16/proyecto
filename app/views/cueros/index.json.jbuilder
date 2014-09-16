json.array!(@cueros) do |cuero|
  json.extract! cuero, :id, :ficha_id, :programa_id
  json.url cuero_url(cuero, format: :json)
end
