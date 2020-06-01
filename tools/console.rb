# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
reload

greg = Student.new("Greg Heffley")
marcia = Student.new("Marcia Guerrera")
sid = Student.new("Sid Hirsch")

kip = Tutor.new("Kip Livingston")
jude = Tutor.new("Jude Smith-Huang")

lawndarts = Course.new(jude, marcia, "Intro to Lawn Darts")
deepfry = Course.new(jude, greg, "Advanced Deep-Frying Techniques II")
snails = Course.new(kip, greg, "Catching Snails for the Amateur Enthusiast")
drinkdad = Course.new(kip, greg, "Boba Dads, Coffee Dads, and Milk Dads, Oh My!")
termites = Course.new(jude, sid, "How To Befriend Termites: A Primer")

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
