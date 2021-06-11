require './animal.rb'

class Fish < Animal
  attr_reader :water_type
  
  def initialize(name, color, diet, water_type)
    super(name, color, diet)
    @water_type = water_type
  end

  def water_type=(water_type)
    unless water_type == "fresh" || water_type == "salt"
      raise "Fish only swim in `fresh` or `salt` water!"
    else
      @water_type = water_type
    end 
  end

  def swim
    "#{name} swims in #{water_type}water."
  end
end