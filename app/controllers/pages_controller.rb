class PagesController < ApplicationController

  def index
    @calories = Calory.all
    @Exercises = Exercise.all
    @calories_ate = Calory.calories_today
    @calories_burned = Exercise.calories_burned_today
    @most_popular = Exercise.most_popular
  end

  def root

  end

end
