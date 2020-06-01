# require and load the environment file
require_relative '../config/environment.rb'
require 'pry'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

s1=Student.new("Dennis")
s2=Student.new("Eric")
s3=Student.new("Val")

t1=Tutor.new("A")
t2=Tutor.new("E")
t3=Tutor.new("B")

c1=Course.new(t1, s1, "Coding")
c2=Course.new(t1, s2, "Coding")
c3=Course.new(t2, s3, "Math")
c4=Course.new(t3, s1, "Science")


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
