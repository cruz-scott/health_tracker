class Calory < ActiveRecord::Base

  def self.calories_today
    if Calory.count == 0
      0
    else
      # puts "Time.now: #{Time.now.strftime("%D")}"
      # Calory.all.each {|obj| print obj.value; puts obj.created_at.strftime("%D") }
      Calory.all.reduce(0) {|sum, obj| obj.created_at.strftime("%D") == Time.now.strftime("%D") ? sum + obj.value : sum }
    end
  end

end
