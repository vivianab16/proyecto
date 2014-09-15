json.array!(@confeccion) do |confeccion|
  json.extract! confeccion, :id, :ficha_id, :programa_id
  json.url confeccion_url(confeccion, format: :json)
end
