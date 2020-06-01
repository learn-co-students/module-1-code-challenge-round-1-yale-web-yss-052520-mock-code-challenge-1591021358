# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

s1 = Student.new("s1")
s2 = Student.new("s2")
s3 = Student.new("s3")

t1 = Tutor.new("t1")
t2 = Tutor.new("t2")
t3 = Tutor.new("t3")

c1 = Course.new(t1, s3, "c1")
c2 = Course.new(t2, s1, "c2")
c3 = Course.new(t3, s1, "c3")
c3 = Course.new(t2, s1, "c3")


puts s2.enrolled_fulltime?    

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console





# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
