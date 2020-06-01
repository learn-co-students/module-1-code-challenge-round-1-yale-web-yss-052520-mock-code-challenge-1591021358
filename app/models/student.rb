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

    def tutors
        # I am assuming that the specs are looking for a unique list -
        # if a student is has the same tutor in two classes, 
        # they still only have one tutor, not two, 
        # so the length of their .tutors method should be 1.
        self.courses.map{|course| course.tutor}.uniq
    end

    def enrolled_fulltime?
        self.courses.length >= 3
    end

end
