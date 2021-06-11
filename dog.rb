class Dog < Animal
  
  def initialize(name, color, diet, collar_color)
    super(name, color, diet)
    @collar_color = collar_color
  end

  def collar_color=(collar_color)
    unless collar_color.is_a? String
      raise "Color must be a string!"
    end
    @collar_color = collar_color
  end

  def run
    "#{name} runs"
  end
end