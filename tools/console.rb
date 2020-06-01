# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


  # joe = Student.new("Harry")
  # joe.name = "Joe"
  # puts(joe.name)
  # jeff = Student.new("jeff")

  # brown = Tutor.new("Jack")
  # brown.name = "Brown"
  # puts(brown.name)
  # barry = Tutor.new("barry")

  # spanish = Course.new( brown, joe, "spanish")
  # # puts spanish.course_name
  # # puts spanish.tutor
  # # puts spanish.student
  # spanish_2 = Course.new( brown, jeff, "spanish")

  # english = Course.new( barry, joe, "english")
  # english_2 = Course.new( barry, jeff,"english")

  # english_3 = Course.new( barry, joe ,"english")


  # # puts "*********************************"
  # # pp brown.courses
  # # pp brown.students
  # # puts "*********************************"
  # # pp joe.courses
  # # pp joe.tutors
  # # puts "*********************************"
  # # puts brown.tutored_student?(joe)
  # puts "*********************************"
  # puts joe.enrolled_fulltime?


  # pp Student.all 
  # pp Tutor.all
  # pp Course.all
# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
