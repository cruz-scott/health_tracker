class PagesController < ApplicationController

  def index
    @calories_consumed = Calory.calories_today
    @calories_burned = Exercise.calories_burned_today
  end

end
