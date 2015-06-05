module PagesHelper

  def calculate_net_calories(calories, exercises)
    calory.calories_today - exercise.calories_burned_today unless calory == nil || exercise == nil
  end

end
