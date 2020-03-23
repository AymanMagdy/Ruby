#!/bin/usr/ruby -w

print <<"EOF"
    4) The number 6 is a truly great number. Given two int values, a and b, return True if
    either one is 6. Or if their sum or difference is 6. Note: the function abs(num)
    computes the absolute value of a number.
EOF

puts "Enter 2 number: "
first_number = gets.chomp
second_number = gets.chomp

if first_number.to_i() == 6 || second_number.to_i() == 6
    if first_number.to_i() == 6
        puts "First number: " + first_number
    elsif second_number.to_i() == 6
        puts "Second number: " + second_number
    end
else
    sum = first_number.to_i() + second_number.to_i()

    if first_number.to_i() > second_number.to_i()
        diff = first_number.to_i() - second_number.to_i()
    elsif second_number.to_i() > first_number.to_i()
        diff = second_number.to_i() - first_number.to_i()
    end

    if sum.to_i() == 6
        puts "The sum: #{sum}"
    elsif diff.to_i() == 6
        puts "The diff: #{diff}"
    end
end

