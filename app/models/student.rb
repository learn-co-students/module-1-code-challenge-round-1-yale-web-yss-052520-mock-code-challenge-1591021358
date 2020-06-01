class Student

    attr_accessor :name 

    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def save 
        @@all << self
    end

    def self.all
        @@all 
    end

    def courses
        Course.all.select {|course| course.student == self}
    end
# tutors finds all tutor, even duplicates
    def tutors
        self.courses.map {|course| course.tutor }
    end

    def enrolled_fulltime?
        self.courses.size >= 3 
    end
end
