# Ruby Problem Solving - Problem 2
begin 
  print "Enter a number: "
  num = gets.chomp
end until num.to_i.to_s == num

if num.to_i >= 0 
  puts num.chars.sort.reverse.join
else
  num = num.chars.sort
  # if there are any zeroes, put ALL zeroes after first digit
  to_swap = num.index { |x| x != '0' && x != '-' }
  unless to_swap == 1 # 0 exists
    num[1] = num[to_swap]
    num[to_swap] = 0
  end
  puts num.join
end