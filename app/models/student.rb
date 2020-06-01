class Student
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def save
        self.class.all << self
    end

    def courses
        Course.all.select {|course| course.student == self}
    end

    def tutors
        courses.map {|course| course.tutor}.uniq
    end

    def enrolled_fulltime?
        courses.count >= 3 ? true : false
    end

    def self.all
        @@all
    end

end
