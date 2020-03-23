#!/bin/usr/ruby -w

print <<"EOF"
    5) Given a number n, return True if n is in the range 1..10, inclusive. Unless
    "outsideMode" is True, in which case return True if the number is less or equal to
    1, or greater or equal to 10.
EOF

puts "Enter a number:"
user_number_range = gets.chomp

if ((1..10) === user_number_range.to_i())
    puts "true"
else 
    puts "false"
end