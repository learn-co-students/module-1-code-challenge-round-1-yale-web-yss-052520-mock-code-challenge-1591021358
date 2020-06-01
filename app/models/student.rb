class Student
    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end 

    def self.all
        @@all
    end

    def courses
        Course.all.select{|course|course.student == self}
    end

    def tutors
        courses.map{|course|course.tutor}
    end 

    def enrolled_fulltime?
        courses.count >= 3
    end
end
