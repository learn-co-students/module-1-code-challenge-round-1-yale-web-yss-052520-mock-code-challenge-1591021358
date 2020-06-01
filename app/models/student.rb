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
#would include .uniq at the end of } if there was clear instruction that it should not repeat
    def tutors
        courses.map{|course| course.tutor}
    end

    def enrolled_fulltime?
        courses.count > 3
    end
end
