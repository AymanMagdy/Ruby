#!/bin/usr/ruby -w

print <<"EOF"
    Given a string, return the string made of its first two chars, so the String "Hello"
    yields "He". If the string is shorter than length 2, return whatever there is, so "X"
    yields "X", and the empty string "" yields the empty string ""
EOF

puts "Enter s string: "
user_string = gets.chomp

if user_string.empty?
    puts ""
elsif user_string.size < 2
    puts "The enter string is > #{user_string}"
elsif user_string.size > 2
    puts "#{user_string[0,2]}"
end 
