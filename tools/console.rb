# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

tutor1 = Tutor.new("John")
tutor2 = Tutor.new("Anna")
tutor3 = Tutor.new("Sam")

student1 = Student.new("Ross")
student2 = Student.new("James")
student3 = Student.new("Mona")
student4 = Student.new("Hank")
student5 = Student.new("Jazz")

course1 = Course.new(tutor1, student2, "math")
course2 = Course.new(tutor2, student1, "english")
course3 = Course.new(tutor3, student1, "history")
course4 = Course.new(tutor1, student1, "science")
course5 = Course.new(tutor2, student4, "english")
course6 = Course.new(tutor1, student1, "math")

Tutor.all
Student.all 
Course.all

tutor1.name
student2.name 
course1.course_name 
course2.tutor
course3.student

tutor2.courses 
tutor1.students
student1.courses
student2.tutors 
tutor3.tutored_student?(student5)
student1.enrolled_fulltime?


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
