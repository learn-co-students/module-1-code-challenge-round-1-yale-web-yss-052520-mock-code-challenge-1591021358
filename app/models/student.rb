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
		Course.all.select{|course| course.student == self}
	end

	def tutors
		Course.all.select{|course| course.student == self}.map {|course| course.tutor}
	end

	def enrolled_fulltime?
		courses.length >= 3
	end

end

