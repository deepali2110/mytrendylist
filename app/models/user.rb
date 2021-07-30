class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable



         validates_presence_of  :email
         validates_presence_of :password, :on =>create
         validates_format_of :email, :with =>/\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, :allow_blank =>false, :uniqueness =>true, :message =>":Enter Correct Format"
         

         PASSWORD_FORMAT = /\A
              (?=.{5,})          # Must contain 8 or more characters
              (?=.*\d)           # Must contain a digit
              (?=.*[a-z])        # Must contain a lower case character
              (?=.*[A-Z])        # Must contain an upper case character
               (?=.*[[:^alnum:]]) # Must contain a symbol
                /x
         validates_format_of :password, :with =>PASSWORD_FORMAT, :message =>" should contain Uppercase letters: A-Z 
          Lowercase letters: a-z 
           Numbers: 0-9 
           Symbols: ~`!@#$%^&*()_-+={[}]|\:;<,>.?/"
         validates_length_of :password, :minimum =>5

end
