json.array!(@voice_over_types) do |voice_over_type|
  json.extract! voice_over_type, :id, :name
  json.url voice_over_type_url(voice_over_type, format: :json)
end
