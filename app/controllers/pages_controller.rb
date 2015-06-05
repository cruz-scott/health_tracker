class PagesController < ApplicationController

  def index
    @calories = Calory.all
    @Exercises = Exercise.all
  end

end
