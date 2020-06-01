class Student

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def self.all
        @@all 
    end

    def courses #returns all course instaces where I/self is student (which includes course name, student, and tutor)
        Course.all.select {|course_info| course_info.student == self}
    end

    def tutors 
        courses.map {|courses| courses.tutor}
    end

    def enrolled_fulltime?
        #need to test if #courses produces an array with 3 or more instances
        
        if courses.length >= 3
            true
        else
            false
        end
    end

end
