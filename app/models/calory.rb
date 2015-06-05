class Calory < ActiveRecord::Base

  def self.calories_today
    if Calory.count == 0
      0
    else
      calories_today = Calory.order(:value).map {|c| c.value if c.created_at.day == Time.now.day}
      calories_today.reject! {|c| c == nil}
      calories_today.reduce(:+)
    end
  end

end
