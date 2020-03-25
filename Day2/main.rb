#!/bin/usr/ruby
require './User'
require './Person'
require './Talkable'
require 'getoptlong'
require 'json'

def main_function(*args)
    user_name = ""
    email_address = ""
    phone_number = ""
    number_of_users = ""
    list_flag = creat_user_flag = false

    opts = GetoptLong.new(
        [ "--name",  GetoptLong::OPTIONAL_ARGUMENT ],
        [ "--email", GetoptLong::OPTIONAL_ARGUMENT],
        [ "--phone", GetoptLong::OPTIONAL_ARGUMENT ],
        [ "--list",  GetoptLong::OPTIONAL_ARGUMENT ],
        [ "--help",  GetoptLong::OPTIONAL_ARGUMENT ]
    )


    opts.each do |opt, arg|
        case opt
            when '--name'
                create_flag = true
                user_name = arg
            when '--email' 
                email_address = arg
            when '--phone' 
                phone_number = arg
            when '--list'
                list_flag = true
                number_of_users = arg
            when '--help'
                help()
        end
    end
    
    new_command_input = User.new(user_name, email_address, phone_number)
    new_user = new_command_input.create()

    if list_flag == true && number_of_users == ''
        new_command_input.list()
    elsif list_flag == true && number_of_users != ''
        new_command_input.list(number_of_users.to_i())
    end
end


def help()
    print <<"EOF";
ruby main.rb --name name_value --email email_value --phone phone_value
ruby main.rb --list \n
--name, Input type string to provide a user name.
--email, Input type string to provide an email address.
--phone, Input type string to provide a phone number.
--list, (OPTIONAL) Input type to list all the users.
--list (int), Input type to list the first n number of users. 
EOF
end 


if ARGV.length == 1
    main_function(ARGV)
elsif ARGV.length == 2
    main_function(ARGV)
elsif ARGV.length == 5
    main_function(ARGV)
elsif ARGV.length == 6
    main_function(ARGV)
elsif ARGV.length == 7
    main_function(ARGV)
elsif ARGV.length == 8
    main_function(ARGV)
else
    help()
end