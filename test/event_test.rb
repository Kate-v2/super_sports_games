require 'pry'

require 'minitest/autorun'
require 'minitest/pride'
require './lib/event'



class EventTest < Minitest::Test

  def test_it_exists
    soccer = Event.new("Soccer", [1, 2, 3, 4, 5])
    assert_instance_of Event, soccer
  end

  def test_it_has_max_age
    soccer = Event.new("Soccer", [1, 2, 3, 4, 5])
    actual = soccer.max_age
    expected = 5
    assert_equal expected, actual
  end

  def test_it_has_min_age
    soccer = Event.new("Soccer", [1, 2, 3, 4, 5])
    actual = soccer.min_age
    expected = 1
    assert_equal expected, actual
  end

  def test_it_has_a_sum_of_ages
    soccer = Event.new("Soccer", [1, 2, 3, 4, 5])
    actual = soccer.sum_ages
    expected = 15
    assert_equal expected, actual
  end

  def test_it_has_average_age
    soccer = Event.new("Soccer", [1, 2, 3, 4, 5])
    actual = soccer.average_age
    expected = 3
    assert_equal expected, actual
  end

  def test_it_can_standard_deviation_age
    soccer = Event.new("Soccer", [1, 2, 3, 4, 5])
    actual = soccer.standard_deviation_age
    expected = 1.41
    assert_equal expected, actual
  end

  def test_it_can_subtract_average_from_ages
    soccer = Event.new("Soccer", [1, 2, 3, 4, 5])
    actual = soccer.ages_minus_average(3)
    expected = [-2, -1, 0, 1, 2]
    assert_equal expected, actual
  end

  def test_it_can_square_modified_ages
    soccer = Event.new("Soccer", [1, 2, 3, 4, 5])
    actual = soccer.square_each_modified_age([-2, -1, 0, 1, 2])
    expected = [4, 1, 0, 1, 4]
    assert_equal expected, actual
  end

  def test_it_can_sum_squared_mod_ages
    soccer = Event.new("Soccer", [1, 2, 3, 4, 5])
    actual = soccer.sum_squared_mod_ages([4, 1, 0, 1, 4])
    expected = 10
    assert_equal expected, actual
  end

  def test_it_can_average_modified_ages
    soccer = Event.new("Soccer", [1, 2, 3, 4, 5])
    actual = soccer.average_modified_ages(10)
    expected = 2
    assert_equal expected, actual
  end

  def test_it_can_calculate_square_root
    soccer = Event.new("Soccer", [1, 2, 3, 4, 5])
    actual = soccer.square_root(2)
    expected = 1.41
    assert_equal expected, actual
  end

end
