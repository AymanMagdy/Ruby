#!/bin/usr/ruby -w

print <<'EOF'
    12) .Return the number of even ints in the given array. Note: the % "mod" operator
    computes the remainder, e.g. 5 % 2 is 1
EOF

numbers_array = [1,2,3,4,6]
total_even = 0

numbers_array.each { |number|
    if number.modulo(2) == 0
        total_even += 1
    end
}

puts "The total of the even numbers > #{total_even}"