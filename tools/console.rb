# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
s1 = Student.new("Drew")
s2 = Student.new("John")
s3 = Student.new("Jane")
s4 = Student.new("Jonas")
s5 = Student.new("Abby")

t1 = Tutor.new("Sylwia")
t2 = Tutor.new("Alex")
t3 = Tutor.new("David")
t4 = Tutor.new("Tim")

c1 = Course.new(t1, s1, "English")
c2 = Course.new(t1, s3, "CS")
c3 = Course.new(t3, s2, "History")
c4 = Course.new(t2, s4, "Engineering")
c5 = Course.new(t4, s5, "Linear Algebra")



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
