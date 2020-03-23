#!/bin/usr/ruby -w

print <<"EOF"
    2) Given two int values, return their sum. Unless the two values are the same, then
    return double their sum.
EOF

puts "Enter 2 number: "
first_number = gets.chomp
second_number = gets.chomp

if first_number == second_number
    puts (first_number.to_i() + second_number.to_i()) * 2
else
    puts first_number.to_i() + second_number.to_i()
end