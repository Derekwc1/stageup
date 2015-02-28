json.array!(@startups) do |startup|
  json.extract! startup, :id, :name, :pitch, :position, :equity, :stage
  json.url startup_url(startup, format: :json)
end
