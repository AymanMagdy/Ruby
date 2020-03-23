#!/bin/usr/ruby -w

print <<"EOF"
    11) Given a string, return a version without the first and last char, so "Hello" yields
    "ell". The string length will be at least 2.
EOF

puts "Enter a string: "
user_input = gets.chomp
puts "#{user_input[1..-2]}"