class Student
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name=name
        @@all << self
    end
    def courses
        Course.all.select{|course| course.student==self}
    end
    def tutors
        courses.map{|course| course.tutor}.uniq
    end
    def enrolled_fulltime?
        courses.length>=3
    end
    def self.all
        @@all
    end
end
