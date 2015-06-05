require 'test_helper'

class ExerciseTest < ActiveSupport::TestCase
  test "most popular exercise" do
    assert_equal "Run", Exercise.most_popular
  end
end
