
class Tutor
    attr_accessor :name
    @@all = []

    #`Tutor` is initialized with a name (string)
    def initialize(name)
        @name = name
        @@all << self
    end

    #returns an array of all the `Tutor` instances that have been initialized
    def self.all
        @@all
    end

    # returns an array of `Course` instances associated with the `Tutor` instance.
    def courses
        Course.all.select do |course| 
            course.tutor == self
        end
    end
    
    # returns an array of `Student` instances tutored by the `Tutor` instance.
    def students
        courses.map do |course| 
            course.student
        end
    end

    #returns `true` if the `Tutor` has tutored this `Student` (if there is a `Course` instance that has this `Tutor` and `Student`), returns `false` otherwise
    def tutored_student(student)
		students.include? student
	end


end
