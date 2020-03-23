#!/bin/usr/ruby -w

print <<"EOF"
    3) Given an int n, return the absolute difference between n and 21, except return
    double the absolute difference if n is over 21.
EOF

puts "Enter a number:"
user_input = gets.chomp
if user_input.to_i() < 21
    puts 21 - user_input.to_i()
else 
    diff = user_input.to_i() - 21
    puts diff.to_i() * 2
end