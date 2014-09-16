json.array!(@cargos) do |cargo|
  json.extract! cargo, :id, :nomcar
  json.url cargo_url(cargo, format: :json)
end
