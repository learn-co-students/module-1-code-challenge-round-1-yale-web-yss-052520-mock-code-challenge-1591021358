# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


isabel = Student.new("isabel")
frankie = Student.new("frankie")
celeste = Student.new("celeste")

teacher_a = Tutor.new("teacher a")
teacher_b = Tutor.new("teacher b")
teacher_c = Tutor.new("teacher c")

math = Course.new(teacher_a, isabel, "Math")
bio = Course.new(teacher_a, isabel, "Biology")
chem = Course.new(teacher_a, celeste, "Chemistry")
art_history = Course.new(teacher_b, frankie, "Art History")
illustration = Course.new(teacher_b, celeste, "Illustration")
design = Course.new(teacher_c, isabel, "Design")
science = Course.new(teacher_c, celeste, "Science")


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
