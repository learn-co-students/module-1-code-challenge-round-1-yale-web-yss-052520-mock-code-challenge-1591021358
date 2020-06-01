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
        Course.all.select do |course|
            course.student == self
        end
    end

    def tutors
        courses.map {|course| course.tutor}
    end 

    def enrolled_fulltime?
        courses.size 
        if courses.size >= 3
           true
        else 
            false
        end
    end

end
