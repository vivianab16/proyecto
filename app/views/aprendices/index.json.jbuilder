json.array!(@aprendices) do |aprendiz|
  json.extract! aprendiz, :id, :nombre, :apellido, :identificacion, :centro, :programa, :ficha
  json.url aprendiz_url(aprendiz, format: :json)
end
