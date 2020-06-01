# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
kike = Student.new("Enrique Valencia")
nico = Student.new("Nicholas Valencia")
rick = Student.new("Rick Sanchez")
vidhi = Tutor.new("Vidhi S")
flatiron = Course.new(vidhi, kike, "Yale_Flatiron")
micro = Course.new(vidhi, kike, "Microeconomics")
math = Course.new(vidhi, kike, "Calculus_1")



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
