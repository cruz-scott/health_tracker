class Weight < ActiveRecord::Base
  validate :same_date, on: :create

  private def same_date
    if Weight.count == 0
      true
    else
      if Time.now.strftime("%D") == Weight.last.created_at.strftime("%D")
        errors.add(:_, "Cannot weigh yourself in twice on same day")
      end
    end
  end
end
