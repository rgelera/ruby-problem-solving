def leap_year(year)
  unless year % 4 == 0 then return false end
  unless year % 100 == 0 then return true end 
  if year % 400 == 0 then return true end
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