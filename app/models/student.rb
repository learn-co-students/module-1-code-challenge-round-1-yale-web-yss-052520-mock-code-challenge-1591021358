class Student
    attr_accessor :name

    @@all = []

    # `Student` is initialized with a name (string) 
    def initialize(name)
        @name = name
        @@all << self
    end

    # returns an array of all the `Student` instances that have been initialized
    def self.all
        @@all
    end

    # returns an array of all the `Course` instances for the `Student`.
    def courses
        Course.all.select do |course| 
            course.student == self
        end
    end
    
    # returns an array of all of the `Tutor` instances that are tutoring the `Student`.
    def tutors
        courses.map do |course| 
            course.tutor
        end
    end
    
    # returns `true` if the `Student` has enrolled for at least 3 Courses, returns `false` otherwise
    def enrolled_fulltime?
        if courses.length >= 3
            return true
        else
            return false
        end
    end

end
