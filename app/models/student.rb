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
        Course.all.select {|course| course.student == self}
    end 

    def tutors 
        self.courses.map {|course| course.tutor}
    end 

    def enrolled_fulltime?
        self.courses.count > 2 
    end 


end
