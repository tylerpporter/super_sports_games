require 'minitest/autorun'
require 'minitest/pride'
require './lib/event'

class EventTest < Minitest::Test
  def setup
    @event = Event.new("Curling", [24, 30, 18, 20, 41])
  end

  def test_it_exists
    assert_instance_of Event, @event
  end

  def test_it_stores_event_name
    assert_equal "Curling", @event.name
  end

  def test_it_stores_age_data
    assert_equal [24, 30, 18, 20, 41], @event.ages
  end

  def test_it_can_return_min_and_max_age
    assert_equal 41, @event.max_age
    assert_equal 18, @event.min_age
  end

  def test_it_can_return_the_average_age
    assert_equal 26, @event.average_age
  end

  def test_it_can_return_standard_deviation
    assert_equal 8.28, @event.standard_deviation_age
  end

end
