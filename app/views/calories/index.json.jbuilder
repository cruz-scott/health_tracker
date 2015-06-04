json.array!(@calories) do |calory|
  json.extract! calory, :id, :value
  json.url calory_url(calory, format: :json)
end
