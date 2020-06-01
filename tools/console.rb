# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

puts "\nStudent"

james = Student.new("James")
jim = Student.new("Jim")
jimothy = Student.new("Jimothy")

p james
p james.name

puts "\n"

james.name = "Jimbo"
p james
p james.name

puts "\n"

p Student.all

puts "\nTutor"

tames = Tutor.new("Tames")
tim = Tutor.new("Tim")
timothy = Tutor.new("Timothy")

p tames
p tames.name

puts "\n"

tames.name = "Timbo"
p tames
p tames.name

puts "\n"

p Tutor.all

puts "\nCourse"

history = Course.new(timothy, jimothy, "History")
math = Course.new(timothy, jimothy, "Math")
science = Course.new(tim, jimothy, "Science")

p history
p history.tutor
p history.student
p history.course_name

p Course.all

puts "\n Object Relationships"

p timothy.courses
p timothy.students
puts "\n"
p jimothy.courses
p jimothy.tutors
puts "\n"
p timothy.tutored_student?(jimothy)
p timothy.tutored_student?(jim)
puts "\n"
p jimothy.enrolled_fulltime?

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
#binding.pry
0
