json.array!(@mobiliarios) do |mobiliario|
  json.extract! mobiliario, :id, :ficha_id, :programa_id
  json.url mobiliario_url(mobiliario, format: :json)
end
