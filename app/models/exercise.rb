class Exercise < ActiveRecord::Base
  belongs_to :exercise_type

  def self.calories_burned_today
    calories_today = Exercise.order(:calories_burned).map {|c| c.calories_burned if c.created_at.day == Time.now.day}
    calories_today.reject! {|c| c == nil}
    calories_today.reduce(:+) 
  end
end
