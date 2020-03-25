#!/bin/usr/ruby
require './Person'
require './Talkable'
require 'json'

# Create User class
    # ◦ attributes: email, phone
    # ◦ instance methods:
    # ▪ create() : will add new user to a file and return the user’s object.
    # Otherwise, returns false.
    # ◦ Class methods:
    # ▪ list() : will list all users from the file. Use Talkable module’s contacts()
    # method to display the contacts.
    # ▪ list(n) : will list the first n users from the file. Use Talkable module’s
    # contactss() method to display the contacts.

class User < Person
    def initialize(user_name, email_address, phone_number)
        @user_name = user_name
        @email_address = email_address
        @phone_number = phone_number

        super(user_name)
        @valid_name = Person.instance_method(:valid_name).bind(self).call;
    end

    def create()
        if valid_name == true
            new_user = {
                'name' => @user_name,
                'email' => @email_address,
                'phone' => @phone_number
            }
            File.open("users.txt", "a") { |file|
                file.puts JSON.generate(new_user)
            }
            puts "Done adding the new user."
            return new_user
        elsif valid_name == false
            puts "Invalid entered name."
            return false
        end
    end

    def list(*args)
        file = File.open("users.txt")
        file_data = file.readlines

        case args.size
            when 0
                puts file_data
                # To access everyline of the file as json data.
                # file_data.each { |line|
                #     user_data = JSON.parse(line)
                #     puts "User name: #{user_data['name']}"
                #     puts "User email: #{user_data['email']}"
                #     puts "User phone: #{user_data['phone']}"
                #     puts "\n"
                # }
            when 1
                needed_lines = args[0]
                puts file_data[0..needed_lines-1]
        end
    end

    def contacts()
        file = File.open("users.txt")
        file_data = file.readlines
        file_data.each { |line|
            user_data = JSON.parse(line)
            user_email = user_data['email']
            user_phone = user_data['phone']
            Talkable.set_email(user_email)
            Talkable.set_phone_number(user_phone)
            puts Talkable.concats()
        }
    end
end
