class Course

    attr_reader :course_name, :student, :tutor
    @@all = []

    def initialize(tutor, student, course_name)
        @tutor = tutor
        @student = student
        @course_name = course_name
        self.class.all << self 
    end

    # Class method to return all instances of this class that have been created
    def self.all 
        @@all 
    end 
end
