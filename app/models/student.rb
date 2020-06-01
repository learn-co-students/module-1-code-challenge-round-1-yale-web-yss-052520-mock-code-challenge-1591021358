class Student
    @@all = [] 
    def initialize(name)
        @name = name 
        @@all << self 
    end 
    attr_accessor :name 
    def self.all 
        @@all 
    end 

    def courses 
        Course.all.select {|one_course| one_course.student == self}
    end 

    def num_courses 
        self.courses.size 
    end 

    def tutors  
        self.courses.map {|one_course| one_course.tutor }.uniq 
    end 

    def enrolled_fulltime?
        if self.num_courses >= 3 
            return true 
        else return false 
        end 
    end 
end
