# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

alex = Student.new("Alex")
ben = Student.new("Ben")
cat = Student.new("Cat")
dave = Student.new("Dave")

xiggins = Tutor.new("Xiggins")
yiggins = Tutor.new("Yiggins")
ziggins = Tutor.new("Ziggins")

chem_xa = Course.new(xiggins, alex, "Chemistry")
chem_xb = Course.new(xiggins, ben, "Chemistry")
math_xa = Course.new(xiggins, alex, "Math")
math_xc = Course.new(xiggins, cat, "Math")
math_yd = Course.new(yiggins, dave, "Math")
math_yb = Course.new(yiggins, ben, "Math")
bio_yd = Course.new(yiggins, dave, "Bio")
bio_yc = Course.new(yiggins, cat, "Bio")
eng_zd = Course.new(ziggins, dave, "English")
eng_zc = Course.new(ziggins, cat, "English")
hist_zc = Course.new(ziggins, cat, "History")



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
