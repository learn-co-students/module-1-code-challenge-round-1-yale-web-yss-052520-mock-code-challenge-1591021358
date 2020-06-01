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
        courses.map {|course| course.tutor}.uniq
        # returns an array of all of the Tutor instances that are tutoring the Student
        # I interpret this sentence to mean that return names of all tutors teaching that students.
        # Therefore the array has to contain unique elements of tutors
    end

    def enrolled_fulltime?
        if courses.size >= 3
            return true
        else
            return false
        end
    end
    
end
