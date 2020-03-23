#!/bin/usr/ruby -w

print <<"EOF"
    8) Given a string name, e.g. "Bob", return a greeting of the form "Hello Bob!".
EOF

puts "Enter your name: "
user_name = gets.chomp
puts "Hello #{user_name}"