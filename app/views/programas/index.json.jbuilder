json.array!(@programas) do |programa|
  json.extract! programa, :id, :nombre
  json.url programa_url(programa, format: :json)
end
