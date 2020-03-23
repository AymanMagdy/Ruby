#!/bin/usr/ruby -w

print <<"EOF"
    7) Given 3 int values, a b c, return their sum. However, if one of the values is 13 then
    it does not count towards the sum and values to its right do not count. So for
    example, if b is 13, then both b and c do not count.
EOF

puts "Enter 3 values"

value_a = gets.chomp
value_b = gets.chomp
value_c = gets.chomp

result = 0

if value_b.to_i() == 13
    puts "No results"
else 
    result = (value_b.to_i() + value_a.to_i()) + value_c.to_i()
end

puts "result: #{result}"