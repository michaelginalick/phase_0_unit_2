# U2.W5: Virus Predictor

# I worked on this challenge with Carl Krause.

require_relative 'state_data' 

class VirusPredictor

  def initialize(state_of_origin, population_density, population, region, regional_spread) # Defines all arguments as instance variables
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end

  def virus_effects
    number_of_deaths = predicted_deaths
    speed = speed_of_spread
    print "#{@state} will lose #{number_of_deaths} people in this outbreak and will spread across the state in #{speed} months.\n\n"
  end

  private  
  
  def predicted_deaths
      multiplier = case @population_density
        when 150..200
          0.3
        when 100..150
          0.2
        when 50..100
          0.1
        when 0..50 
          0.05
        else
          0.4
        end
    return (@population * multiplier).floor
  end

  def speed_of_spread #in months
    speed = 0.0

    speed += case @population_density
      when 150..200
        1
      when 100..150
        1.5
      when 50..100
        2
      when 0..50 
        2.5
      else
        0.5
      end
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
STATE_DATA.each do |key, value|
  state = VirusPredictor.new(key, STATE_DATA[key][:population_density], STATE_DATA[key][:population], STATE_DATA[key][:region], STATE_DATA[key][:regional_spread]) 
  state.virus_effects
end