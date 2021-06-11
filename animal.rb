class Animal
  attr_reader :name, :color, :diet

  def initialize(name, color, diet)
    @name = name
    @color = color
    @diet = diet
  end

  def name=(name)
    if name == ""
      raise "Name can't be blank!"
    end
    @name = name
  end

  def color=(color)
    unless color.is_a? String
      raise "Color must be a string!"
    end
    @color = color
  end

  def diet=(diet)
    if diet.is_a? Array && array_of_strings(diet)
      @diet = diet
    else
      raise "Diet must be an array of strings!"
    end
  end

  def eat(food)
    if diet.includes? food
      "#{@name} eats #{food}. Yummmm!"
    else
      "#{@name} doesn't like #{food}. Blegh!"
    end
  end

  def sleep
    "#{@name} goes to sleep. ZZzzz"
  end

  def print
    "#{@name} is a #{@color} #{self.class.name} that likes to eat #{@diet.sample}"
  end

  private
  def array_of_strings(arr)
    return arr.all? { |x| x.is_a? String } && !arr.empty?
  end

  
end