json.array!(@exercises) do |exercise|
  json.extract! exercise, :id, :exercise_type_id, :calories_burned
  json.url exercise_url(exercise, format: :json)
end
