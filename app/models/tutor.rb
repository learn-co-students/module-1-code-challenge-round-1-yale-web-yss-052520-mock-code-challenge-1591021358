class Tutor
  
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
        Course.all.select { |course| course.tutor == self }
    end
# students finds all students, even duplicates
    def students
        self.courses.map {|course| course.student }
    end

    def tutored_student?(student)
        students.member? student
    end
end
