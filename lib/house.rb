class House
  attr_reader :price, :address, :rooms

  def initialize(price, address)
    @price   = price
    @address = address
    @rooms   = []
  end

  def add_room(room_input)
    @rooms << room_input
    @rooms

  end

  def rooms_from_category(room_input)
    room_type      = []
    basement_array = []

    @rooms.find_all do |room|
      if room.room == :basement
      basement_array << room
        return basement_array
      elsif room.room == :bedroom
      room_type << room
      end
    end
    room_type
  end

  def area
    house_area = []
    @rooms.each do |room|
      house_area << room.dimension_l * room.dimension_w
    end
    house_area.sum
  end

  def price_per_square_foot
    price_per_sqft = (@price["400000"].to_i / self.area.to_f)

    price_per_sqft.round(2)
  end

  def rooms_sorted_by_area
    house_area = {}
    @rooms.each do |room|
      house_area[room] = room.dimension_l * room.dimension_w
    end
    house_area.to_a.flatten

  end


end
