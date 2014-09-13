json.array!(@instructores) do |instructor|
  json.extract! instructor, :id, :nombre, :apellidos, :identificacion, :centro_id, :programa_id
  json.url instructor_url(instructor, format: :json)
end
