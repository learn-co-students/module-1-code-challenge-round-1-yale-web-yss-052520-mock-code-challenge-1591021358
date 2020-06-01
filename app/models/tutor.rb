class Tutor

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
        Course.all.select{|course| course.tutor == self}
    end

    def students
        # I am assuming that the specs are looking for a unique list -
        # if a tutor is tutoring one student but in two classes, 
        # they still only have one student, not two, 
        # so the length of their .students method should be 1.
        self.courses.map{|course| course.student}.uniq
    end

    def tutored_student?(student)
        self.students.any?(student)
    end

end
