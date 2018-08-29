
class Room
  attr_reader :room, :dimension_l, :dimension_w

  def initialize(room, length, width)
    @room   = room
    @dimension_l = length
    @dimension_w  = width
  end

  def area
    @dimension_l * @dimension_w
  end

end
