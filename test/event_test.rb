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

  

end
