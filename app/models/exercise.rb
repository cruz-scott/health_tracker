class Exercise < ActiveRecord::Base
  belongs_to :exercise_type

  def self.calories_burned_today
    if Exercise.count == 0
      0
    else
      calories_today = Exercise.order(:calories_burned).map {|c| c.calories_burned if c.created_at.day == Time.now.day}
      calories_today.reject! {|c| c == nil}
      calories_today.sum
    end
  end

  def self.most_popular
    if Exercise.count == 0
      "No Exercises Completed"
    else
      id_hash = Exercise.group(:exercise_type_id).count
      id = id_hash.max_by{ |k,v| v }[0]
      ExerciseType.find(id).name
    end
  end

end
