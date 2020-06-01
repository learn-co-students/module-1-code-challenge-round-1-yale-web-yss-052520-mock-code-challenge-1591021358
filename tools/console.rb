# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

jim = Student.new("jimmy")
tim = Student.new("timmy")

puff = Tutor.new("Ms. puff")
nancy = Tutor.new("Ms. Nancy")

drivers = Course.new(puff, tim, "Driver's Ed")
math = Course.new(nancy, tim, "Math")



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
