class Student
    attr_accessor :name, :tutor, :course_name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def tutors
        # Tutor.all.select {|tutor| tutor.student == self}
        self.courses.map { |course| course.tutor }
    end
    
    def courses
        Course.all.select {|course| course.student == self}
    end

    def enrolled_fulltime?
        self.courses.count >= 3
    end

end

# tom = Student.new("Tom")
# alex = Student.new("Alex")