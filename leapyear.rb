# Ruby Problem Solving - Problem 4
def leap_year(year)
  return false unless year % 4 == 0
  return true unless year % 100 == 0
  return true if year % 400 == 0
  return false
end

print "Enter a year: "
year = gets.chomp
unless year.to_i.to_s == year && year.to_i >= 0
  puts "#{year} is not a valid year"
else 
  if leap_year(year.to_i)
    puts "#{year} is leap year"
  else 
    puts "#{year} is not leap year"
  end
end