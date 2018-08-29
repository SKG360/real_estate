require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'


class RoomTest < Minitest::Test
  def test_it_exists
    room = Room.new(:bedroom, 10, 13)
    assert_instance_of Room, room
  end

  def test_the_room_type
    room = Room.new(:bedroom, 10, 13)
    assert_equal :bedroom, room.room
  end

  def test_the_room_area
    room = Room.new(:bedroom, 10, 13)
    assert_equal 130, room.area
  end


end
