#!/bin/usr/ruby -w

# • Create Person class
    # ◦ attributes: name
    # ◦ instance methods:
    # ▪ valid_name?(): return true if name is only alphabetic characters

class Person
    def initialize(user_input)
        @person_name = user_input
    end

    def valid_name()
        if @person_name.match(/^[a-zA-Z]*$/)
            return true
        else 
            return false
        end
    end
end