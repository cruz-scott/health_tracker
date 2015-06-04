json.array!(@steps) do |step|
  json.extract! step, :id, :value
  json.url step_url(step, format: :json)
end
