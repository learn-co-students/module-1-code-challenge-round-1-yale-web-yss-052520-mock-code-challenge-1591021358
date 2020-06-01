require './student.rb'
require './course.rb'

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
  	Course.all.select{|course| course.tutor == self}
  end

  def students
  	Course.all.select{|course| course.tutor == self}.map {|course| course.student}
  end

  def tutored_student?(student)
  	students.include?(student)
  end
end
