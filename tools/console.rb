# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

s1 = Student.new("Abe")
s2 = Student.new("Ben")
s3 = Student.new("Caleb")

t1 = Tutor.new("Danielle")
t2 = Tutor.new("Ellie")
t3 = Tutor.new("Frank")

c1 = Course.new(t1, s1, "Math")
c2 = Course.new(t1, s2, "Chemistry")
c3 = Course.new(t2, s1, "Physics")
c4 = Course.new(t3, s3, "Sociology")
c5 = Course.new(t2, s3, "Cooking")
c6 = Course.new(t1, s3, "Physical Education")

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
