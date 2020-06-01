# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

john = Student.new("John")
ray = Student.new("Ray")
marvin = Student.new("Marvin")

drake = Tutor.new("Drake")
future = Tutor.new("Future")
gunna = Tutor.new("Gunna")

gym = Course.new(future, ray, "Gym")
science = Course.new(gunna, marvin, "Science")
math = Course.new(drake, john, "Math")
history = Course.new(gunna, john, "History")
chemistry = Course.new(future, john, "Chemistry")




# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
