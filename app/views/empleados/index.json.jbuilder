json.array!(@empleados) do |empleado|
  json.extract! empleado, :id, :nombre, :apellidos, :identificacion, :cargo_id, :mail, :tel
  json.url empleado_url(empleado, format: :json)
end
