require 'test_helper'

class CaloryTest < ActiveSupport::TestCase
  test "get calories for day" do
    assert_equal 6, Calory.calories_today
  end
end
