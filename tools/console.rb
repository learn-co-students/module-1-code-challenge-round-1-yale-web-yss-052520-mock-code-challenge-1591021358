# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

john = Student.new("John Brown")
amber = Student.new("Amber Brown")
amy = Tutor.new("Amy Adams")

french_culture = Course.new(amy, john, "French Culture")
af_am_history = Course.new(amy, john, "Af-Am History")
algebra = Course.new(amy, john, "Algebra")



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
