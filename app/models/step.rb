class Step < ActiveRecord::Base
  validates :value, presence: true, numericality: true
end
