# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
student1= Student.new("Nicole")
student2= Student.new("Bernice")
student3= Student.new("Albert")
student4= Student.new("Chloe")
student5= Student.new("Kaylin")

tutor1= Tutor.new("Ms.A")
tutor2= Tutor.new("Ms.B")
tutor3= Tutor.new("Ms.C")

course1= Course.new(tutor1, student1, "Math")
course2= Course.new(tutor2, student1, "Eng")
course3= Course.new(tutor3, student1, "Sci")
course4= Course.new(tutor1, student2, "Math")
course5= Course.new(tutor2, student2, "Eng")
course6= Course.new(tutor3, student3, "Sci")
course7= Course.new(tutor1, student3, "Math")
course8= Course.new(tutor1, student4, "Eng")
course9= Course.new(tutor3, student4, "Math")
course10= Course.new(tutor1, student4, "SS")
course11= Course.new(tutor2, student3, "SS")
course12= Course.new(tutor2, student5, "SS")
course13= Course.new(tutor1, student1, "SS")




# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
