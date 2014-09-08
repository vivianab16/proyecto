json.array!(@visitantes) do |visitante|
  json.extract! visitante, :id, :aprendiz, :funcionario, :instructor, :empleado, :otro
  json.url visitante_url(visitante, format: :json)
end
