class PagesController < ApplicationController

  def index
    @calories = Calory.all
    @Exercises = Exercise.all
    @calories_ate = Calory.calories_today
    @calories_burned = Exercise.calories_burned_today
  end

end
