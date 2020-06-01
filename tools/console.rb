# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

student1 = Student.new("student1")
student2 = Student.new("student2")
student3 = Student.new("student3")

tutor1 = Tutor.new("tutor1")
tutor2 = Tutor.new("tutor2")
tutor3 = Tutor.new("tutor3")

course1 = Course.new(tutor1, student1, "course1")
course2 = Course.new(tutor3, student2, "course2")
course3 = Course.new(tutor2, student1, "course3")
course4 = Course.new(tutor2, student3, "course4")
course5 = Course.new(tutor2, student1, "course5")
course6 = Course.new(tutor1, student3, "course6")
course7 = Course.new(tutor1, student2, "course7")



#my pry is not working well. It sometimes freezes my terminal
#I tested my code just by typing commands into the console.rb

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
# binding.pry
# 0
