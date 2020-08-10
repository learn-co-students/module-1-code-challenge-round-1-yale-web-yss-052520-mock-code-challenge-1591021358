class Tutor

    attr_accessor :name
    @@all = []
    
    def initialize(name_arg)
        @name = name_arg
        @@all << self
    end

    def self.all
        @@all
    end

    def courses 
        Course.all.select do |course|
            course.tutor == self
        end
    end

    # def students
    #     students_array = courses.map do |course|
    #         course.student
    #     end

    #     students_array.uniq
    # end

    def students
        courses.map { |course| course.student }.uniq
    end

end

# TESTS

# - `Tutor#initialize(name)`
#   - `Tutor` is initialized with a name (string)
#   - name **can be** changed after the Tutor is initialized

# - `Tutor#name`
#   - returns the Tutor's name

# - `Tutor.all`
#   - returns an array of all the `Tutor` instances that have been initialized

# - `Tutor#courses`
#   - returns an array of `Course` instances associated with the `Tutor` instance.

# - `Tutor#students`
#   - returns an array of `Student` instances tutored by the `Tutor` instance.