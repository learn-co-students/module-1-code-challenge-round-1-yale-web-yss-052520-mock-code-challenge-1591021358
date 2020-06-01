class Course

    attr_reader :course_name, :student, :tutor

    @@all = []
    
    def initialize(tutor, student, course_name)
        @tutor = tutor
        @student = student
        @course_name = course_name

        @@all << self
    end

    # Class Methods
    def self.all
        @@all
    end

end
