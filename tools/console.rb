# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

student1 = Student.new("Arthur")
student2 = Student.new("JY")
student3 = Student.new("Bryce")

tutor1 = Tutor.new("Omar")
tutor2 = Tutor.new("Seb")
tutor3 = Tutor.new("Justin")

course1 = Course.new(tutor1, student1, "Econ")
course4 = Course.new(tutor2, student1, "Art")
course5 = Course.new(tutor3, student1, "CS")
course2 = Course.new(tutor2, student2, "Art")
course3 = Course.new(tutor3, student3, "CS")


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
