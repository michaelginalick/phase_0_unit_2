#!/usr/local/bin/ruby -w

# U2.W6: Drawer Debugger


# I worked on this challenge [by myself, with: ].


# 2. Original Code

class Drawer

attr_reader :contents

# Are there any more methods needed in this class?

def initialize
@contents = []
@open = true
end

def open
@open = true
puts "Your drawer is open."
end

def close
@open = false
puts "Your drawer is closed."
end 

def add_item(item)
@contents << item
puts "A #{item} was added to the drawer."
end

def remove_item(item = @contents.pop) #what is `#pop` doing? # pop is returning the last item in contents array
@contents.delete(item)
end

def dump  # what should this method return? This should return true if contents array is empty
@contents.clear
puts "Your drawer is empty."
end

def view_contents
puts "The drawer contains:"
@contents.each {|silverware| puts "- " + silverware.type }
end
end

class Silverware
attr_reader :type

# Are there any more methods needed in this class?

def initialize(type, clean = true)
@type = type
@clean = clean
end

def eat
puts "eating with the #{type}"
@clean = false
end

def clean_silverware
 puts "cleaned #{type}"
 @clean = true
end


def clean
  puts "#{type} is clean"
  @clean = true
end


end

knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork")) 
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware 

silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What should this return? The contents of the drawer


fork = Silverware.new("fork")
silverware_drawer.add_item(fork)

fork = silverware_drawer.remove_item(fork) #add some puts statements to help you trace through the code...
fork.eat

#BONUS SECTION
puts fork.clean

# DRIVER TESTS GO BELOW THIS LINE

silverware_drawer.open
silverware_drawer.close
silverware_drawer.add_item(chopsticks = Silverware.new("ladel"))
silverware_drawer.view_contents
chopsticks.eat == "eating with the ladel"
chopsticks.clean




# 5. Reflection 


# this was a really great excerise. it was very helpful to be able to see how the different methods work together to perform 
#
