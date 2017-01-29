# In this exercise, we've already implemented the class, and you have to write the 
# driver code. 
# This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
end


# Write your own driver code below! Make sure your code tests the following:
# The ability to change a room number even after a reservation has already been created
# The add_a_fridge method
# The add_a_crib method
# The add_a_custom_amenity method

puts "TESTING HotelReservation class..."
puts

hotelReservation = HotelReservation.new(customer_name:"Joseph Mugwaneza" , date:"29-jan-2017", room_number: 100)

result = hotelReservation.add_a_fridge[0]
puts "add_a_fridge returned:"
puts result
puts 

if result == "fridge"
  puts "PASS!"
else 
  puts "F"
end 

result = hotelReservation.add_a_crib[1]
puts "add_a_crib returned" 
puts result
puts 

if result == "crib"
  puts "PASS!"
else 
  puts "F"
end 

result = hotelReservation.add_a_custom_amenity("Morning breakfast")[2]
puts "add_a_custom_amenity returned:"
puts result
puts 

if result == "Morning breakfast"
  puts "PASS!"
else
    puts "F"
end 

# At the end my test code will bring all the reservation info.
puts 
p hotelReservation
puts 
