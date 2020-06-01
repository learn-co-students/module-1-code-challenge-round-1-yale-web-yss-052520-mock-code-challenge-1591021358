
class Course
    attr_accessor :course_name
    attr_reader :tutor, :student

    @@all = []

    # `Course` is initialized with a `Tutor` instance, a `Student` instance, and a course_name (string)
    def initialize(tutor, student, course_name)
        @tutor = tutor
        @student = student
        @course_name = course_name
        @@all << self
    end

    # returns an array of all initialized `Course` instances
    def self.all
        @@all
    end


end
