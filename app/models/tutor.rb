class Tutor
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
        Course.all.select {|course| course.tutor == self}
    end

    def students
        courses.map {|course| course.student}.uniq
    end

    def tutored_student?(student)
        students.include?(student) ? true : false
    end

    def self.all
        @@all
    end
  
end
