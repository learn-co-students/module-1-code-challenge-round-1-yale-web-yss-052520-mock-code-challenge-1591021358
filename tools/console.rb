# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

s1 = Student.new("Maura")
s2 = Student.new("Sid")
s3 = Student.new("Jack")
s4 = Student.new("Tilmam")
s5 = Student.new("Lindsay")
s6 = Student.new("Joao")

t1= Tutor.new("Alex")
t2= Tutor.new("Sylwia")
t3= Tutor.new("Vidhi")

# Course.new(tutor instance, student instance, course_name (string))
c1 = Course.new(t1, s1, "math")
c2 = Course.new(t1, s2, "science")
c3 = Course.new(t2, s4, "chemistry")
c4= Course.new(t3, s5, "physics")
c5 = Course.new(t1,s6, "math")
c6 = Course.new(t3, s1, "stats")
c7 = Course.new(t2, s1, "history")




# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
