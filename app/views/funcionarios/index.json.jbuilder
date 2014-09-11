json.array!(@funcionarios) do |funcionario|
  json.extract! funcionario, :id, :nombre, :apellidos, :identificacion, :centro_id, :programa_id
  json.url funcionario_url(funcionario, format: :json)
end
