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

    def courses
        Course.all.select do |course|
            course.student == self
        end
    end

    def tutors
        courses.map do |course|
            course.tutor
        end.uniq
    end

    def enrolled_fulltime?
        self.courses.size >= 3
    end
end
