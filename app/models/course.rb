class Course
    attr_accessor :tutor, :student, :course_name

    @@all = []

    def initialize(tutor, student, course_name)
        @tutor = tutor
        @student = student
        @course_name = course_name
        @@all << self
        #Tutor.all << tutor
        
    end

    def self.all
        @@all
    end

    # def tutor
    #     self.tutor
    # end

    # def student
    #     self.student
    # end

end

