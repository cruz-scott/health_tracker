require 'test_helper'

class CaloryTest < ActiveSupport::TestCase
  test "get calories for day" do
    # Calory.new(value: 6, created_at: Time.now)
    assert_equal 6, Calory.calories_today
  end
end
