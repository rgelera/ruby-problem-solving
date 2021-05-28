# Ruby Problem Solving - Problem 1
begin 
  print "Enter a number: "
  num1 = gets.chomp
end until num1.to_i.to_s == num1
begin 
  print "Enter another number: "
  num2 = gets.chomp
end until num2.to_i.to_s == num2

puts "Max: #{[num1, num2].max}"