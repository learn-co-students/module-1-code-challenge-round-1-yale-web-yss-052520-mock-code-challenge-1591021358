require 'pry'
require './course.rb'
require './tutor.rb'
require './student.rb'

#student tests
michael = Student.new("mike")
michael.name = "Mike"
puts michael.name

puts Student.all


#tutor tests
jesse = Tutor.new("jesse")
puts jesse
puts jesse.name
jesse.name = "Jesse"
puts jesse.name

puts Tutor.all


#course tests
course = Course.new(jesse, michael, "CPSC323")
course = Course.new(jesse, michael, "pop")
course = Course.new(jesse, michael, "boop")
puts course
puts course.course_name
puts Course.all
puts course.student
puts course.tutor


Course.new(Tutor.new("kaleb"), Student.new("larissa"), "flatiron")
Course.new(jesse, Student.new("peach"), "flatiron")
Course.new(Tutor.new("brooklyn"), michael, "learn.co")



print "STUDENTS: #{Student.all} \n"
print "TUTORS: #{Tutor.all} \n"

puts jesse.courses
puts jesse.students.map{|student| student.name}

puts michael.courses.map {|course| course.course_name}
puts michael.tutors.map{|tutor| tutor.name}

print "Has jesse tutored michael"
puts jesse.tutored_student?(michael)
kim = Student.new("Kim")
print "Has jesse tutored Kim"
puts jesse.tutored_student?(kim)

puts "michael full time? #{michael.enrolled_fulltime?}"
puts "kim full time? #{kim.enrolled_fulltime?}"