# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

student1 = Student.new("Bojack")
student2 = Student.new("Bob")
student3 = Student.new("Billy")

tutor1 = Tutor.new("Joe")
tutor2 = Tutor.new("John")
tutor3 = Tutor.new("Jill")

course1 = Course.new(tutor1, student1, "Algebra")
course2 = Course.new(tutor2, student3, "Geometry")
course3 = Course.new(tutor3, student2, "Trigonometry")
course4 = Course.new(tutor3, student1, "History")
course5 = Course.new(tutor1, student3, "English")
course6 = Course.new(tutor1, student3, "Science")





# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
