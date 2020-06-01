require 'pry'

class Tutor

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
    Course.all.select { |course| course.tutor.name == @name }
  end

  def students
    self.courses.map { |course| course.student }.uniq
  end

  def tutored_student?(in_student)
    self.students.any? { |student| in_student == student }
  end
  
end
