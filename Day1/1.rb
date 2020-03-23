#!/bin/usr/ruby -w

print <<"EOF"
    1) Given an int n, return true if it is within 10 of 100 or 200. Note: abs(num)
    computes the absolute value of a number
EOF


class Test_user_input
    def initialize(user_input)
        @user_input = user_input
    end

    def display_details()
        if @user_input <= 200
            return true
        else 
            return false
        end
    end
end

puts "enter a number: "
number = gets.chomp
user1 = Test_user_input.new(number.to_i())
puts user1.display_details()
    
