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


student = Student.new("Justin")
student1 = Student.new("Jason")
student2 = Student.new("Jonatan")
tutor = Tutor.new("Sean")
tutor1 = Tutor.new("Mike")
tutor2 = Tutor.new("James")
course = Course.new(tutor, student, "Physics")
course1 = Course.new(tutor1, student1, "Chemistry")
course2 = Course.new(tutor2, student2, "Math")
course3 = Course.new(tutor, student1, "Geology")
course4 = Course.new(tutor1, student2, "English")
course5 = Course.new(tutor2, student, "Economics")
course6 = Course.new(tutor, student, "Anthropology")

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
