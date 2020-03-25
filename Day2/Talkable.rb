#!/bin/usr/ruby

# • Create Talkable module
# ◦ instance methods:
# ▪ contacts() : returns a string concatenating the email and the phone ex.
# ( “salma@email.com | 0111111111” )

module Talkable
    def Talkable.set_email(email_address)
        @email_address = email_address
    end

    def Talkable.set_phone_number(phone_number)
        @phone_number = phone_number
    end

    def Talkable.get_email()
        return @email_address
    end 

    def Talkable.get_phone_number()
        return phone_number
    end

    def Talkable.concats()
        concatenated_email_phone = ""
        concatenated_email_phone.concat(@email_address)
        concatenated_email_phone.concat(" | ")
        concatenated_email_phone.concat(@phone_number)
        
        return concatenated_email_phone
    end 
end