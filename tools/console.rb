# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

tutor1=Tutor.new("Theodora")
tutor2=Tutor.new("Timothy")
tutor3=Tutor.new("Tom")
student1=Student.new("Sam")
student2=Student.new("Stanley")
student3=Student.new("Sarah")
student4=Student.new("Seth")
student5=Student.new("Serena")
course1=Course.new(tutor1, student1, "Math")
course2=Course.new(tutor1, student1, "English")
course3=Course.new(tutor1, student2, "History")
course4=Course.new(tutor1, student3, "Comp Sci")
course5=Course.new(tutor2, student4, "Math")
course6=Course.new(tutor2, student1, "English")
course7=Course.new(tutor3, student4, "Art")
course8=Course.new(tutor3, student3, "Music")
# course9=Course.new(tutor3, student1, "Music")




# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
