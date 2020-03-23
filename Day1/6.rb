#!/bin/usr/ruby -w

print <<"EOF"
    6) Given 3 int values, a b c, return their sum. However, if one of the values is the
    same as another of the values, it does not count towards the sum.
EOF


puts "Enter 3 values: "
first_input = gets.chomp
second_input = gets.chomp
third_input = gets.chomp
result = 0

if first_input.to_i() != second_input.to_i()
    result += (first_input.to_i() + second_input.to_i())
end
if first_input.to_i() != third_input.to_i()
    result += (first_input.to_i() + third_input.to_i())
end
if second_input.to_i() != third_input.to_i()
    result += (second_input.to_i() + third_input.to_i())
end

puts "Result: #{result}"
