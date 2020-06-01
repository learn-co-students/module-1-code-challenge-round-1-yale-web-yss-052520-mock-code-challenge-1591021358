# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

alice = Student.new("alice")
bob = Student.new("bob")
carol = Tutor.new("carol")
dave = Tutor.new("Dave")
course_1 = Course.new(carol, alice, "math")
course_2 = Course.new(carol, alice, "english")
course_3 = Course.new(dave, alice, "science")
course_4 = Course.new(carol, bob, "math" )

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
