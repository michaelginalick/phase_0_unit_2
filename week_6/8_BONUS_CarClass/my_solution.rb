# U2.W6: Create a Car Class from User Stories


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
	
	attr_reader :car, :model
	def initialize(model,color)
      		@model = model
      		@color = color
      	end

  def distance
  end
  
  def speed
  end

  def turn
  end

  def check_speed
  end

  def accelerate
  end
  
  def decelerate
  end

  def stop
  end
  
  def output
  end
end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
family_car = Car.new("Prius", "Gray")
point_25__miles = Car.distance(".25")
twenty_five_miles_mph = Car.speed("25")
direction = Car.turn == right
school_zone = car.check_speed
thirty_five_miles_mph = Car.speed("35")


# 5. Reflection 
