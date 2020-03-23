#!/bin/usr/ruby -w

print <<"EOF"
    .Given 2 strings, return their concatenation, except omit the first char of each. The
    strings will be at least length 1
EOF

puts "Enter the first string: "
first_string = gets.chomp
puts "Enter the second string: "
second_string = gets.chomp

puts "First string > #{first_string[1..-1]} \nSecond string > #{second_string[1..-1]}"