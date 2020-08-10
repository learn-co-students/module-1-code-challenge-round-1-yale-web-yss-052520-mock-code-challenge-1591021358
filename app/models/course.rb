class Course

    @@all = []

    attr_reader :tutor, :student, :course_name

    def initialize(tutor_instance, student_instance, course_name_arg)
        @tutor = tutor_instance
        @student = student_instance
        @course_name = course_name_arg
        @@all << self
    end

    def self.all
        @@all
    end

end

# TESTS

# - `Course#initialize(tutor, student, course_name)`
#   - `Course` is initialized with a `Tutor` instance, a `Student` instance, and a course_name (string)

# - `Course#course_name`
#   - returns the course_name for the `Course` instance

# - `Course.all`
#   - returns an array of all initialized `Course` instances

# - `Course#tutor`
#   - returns the `Tutor` instance associated with the `Course` instance

# - `Course#student`
#   - returns the `Student` instance associated with the `Course` instance