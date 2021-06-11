require './animal.rb'

class Bird < Animal
  attr_reader :size

  def initialize(name, color, diet, size)
    super(name, color, diet)
    @size = size
  end

  def size=(size)
    unless size == "large" || size == "medium" || size == "small"
      raise "Size must be large, medium or small!"
    else
      @size = size
    end 
  end

  def fly
    "#{name} flies"
  end
end