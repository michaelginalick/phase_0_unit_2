 #U2.W6: Create a Car Class from User Stories


# I worked on this challenge [by myself, with: ].


#As a video game player, I want to be able to create a new car and set it's model and color so I can customize it in the video game.
#As a video game player, I need to be able to define a distance to drive so I can follow directions appropriately.
#As a video game player, I'd like to be able to see the speed I am traveling, so I can properly accelerate or decelerate.
#As a video game player, I want to be able to turn left or right so I can navigate a city and follow directions.
#As a video game player, I want to be able to accelerate and decelerate the car to a defined speed so I can drive following the rules of the road.
#As a video game player, I want to keep track of the total distance I have travelled, so I can get paid for mileage.
#As a video game player, I want to be able to stop the car so I can follow traffic signs and signals.
#As a video game player, I would like to see output reflecting the latest action of my car so I can see a play-by-play of the pizza delivery.
# 2. Pseudocode

#Create a new car of your desired model and type
#Drive .25 miles (speed limit is 25 mph)
#At the stop sign, turn right
#Drive 1.5 miles (speed limit is 35 mph)
#At the school zone, check your speed
#Slow down to speed limit 15 mph
#Drive .25 miles more miles
#At the stop sign, turn left
#Drive 1.4 miles (speed limit is 35 mph)
#Stop at your destination
#Log your total distance travelled

# 3. Initial Solution

class Car

	attr_reader :model, :color
	
	def initialize(model,color)
      		@model = model
      		@color = color
  end
  
  def model
  end
  
  def color
  end
  
  #set distance
  def distance_traveled(distance)
      @distance_traveled = distance
  end
  
  #get distance traveled
  def get_distance_traveled
      @distance_traveled
  end
  
  def total_distance_traveled(a,b,c,d)
    (a + b +c + d)
  end 
  
  #set speed
  def set_speed(mph)
    @speed = mph
  end
  
  #get speed
  def check_speed
     @speed
   end
   
   #turn right
  def right_turn(right)
    @right_turn = right
  end
  
  #turn_left
  def left_turn(left)
    @left_turn = left
  end

  def accelerate
    @accelerate = true
    @decelerate = false
  end

  def decelerate
    @decelerate = true
    @accelerate = false
  end

  def stop(stop)
    @stop = stop

  end

  def output
  end
end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
family_car = Car.new("Prius", "Gray")

#set and get distance
family_car.distance_traveled('.25')
p family_car.get_distance_traveled

#set and get speed
family_car.set_speed(25)
p family_car.check_speed

#turn right
p family_car.right_turn("right")

#set and get speed
family_car.set_speed(15)
p family_car.check_speed

#set and get distance
family_car.distance_traveled('1.5')
p family_car.get_distance_traveled

#turn left
p family_car.right_turn("right")

#set and get distance
family_car.distance_traveled('1.4')
p family_car.get_distance_traveled

#turn left
p family_car.stop("stop")

#total distance
p family_car.total_distance_traveled(".25".to_f, 1.5, ".25".to_f, 1.4)
