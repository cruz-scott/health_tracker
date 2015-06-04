json.array!(@weights) do |weight|
  json.extract! weight, :id, :pounds
  json.url weight_url(weight, format: :json)
end
