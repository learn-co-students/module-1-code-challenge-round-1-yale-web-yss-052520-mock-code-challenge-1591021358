class Student

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def courses
    Course.all.select { |course| course.student.name == @name }
  end

  def tutors
    self.courses.map { |course| course.tutor }.uniq
  end

  def enrolled_fulltime?
    self.courses.length >= 3 ? true : false
  end

end

=begin
`Student#initialize(name)`
  `Student` is initialized with a name (string)
  name **can be** changed after the `Student` is initialized
`Student#name`
  returns the `Student`'s name
`Student.all`
  returns an array of all the `Student` instances that have been initialized
=end
