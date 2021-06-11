require './dog'
require './fish'
require './bird'

lucky = Dog.new("Lucky", "brown", ["beef", "chicken", "carrot"], "orange")
birb = Bird.new("Birb", "green", ["nuts"], "small")
nemo = Fish.new("Nemo", "orange", ["algae"], "fresh")

puts lucky.print
puts birb.print { " #{birb.name} is a #{birb.size} bird." }
puts nemo.print

puts lucky.eat("broccoli")
lucky.add_to_diet("broccoli")
puts lucky.eat("broccoli")

puts lucky.run
puts birb.fly
puts nemo.swim

[lucky, birb, nemo].each { |animal|
  puts animal.sleep
}