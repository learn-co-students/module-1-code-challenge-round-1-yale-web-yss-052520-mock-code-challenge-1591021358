class Tutor
  
    attr_accessor :name

    @@all = []
    
    def initialize(name)
        @name = name

        @@all << self
    end

    def courses
        Course.all.select{|course|
            course.tutor == self
        }
    end

    def students
        courses.collect{|course|
            course.student 
        }
    end

    def tutored_student?(student)
        students.find{|tutored_student|
            tutored_student == student
        }!= nil
    end

    # Class Methods
    def self.all
        @@all
    end
end
