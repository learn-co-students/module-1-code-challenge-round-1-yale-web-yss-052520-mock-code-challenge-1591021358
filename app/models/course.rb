class Course
    @@all = [] 
    def initialize(tutor,student,course_name)
        @tutor = tutor 
        @student = student 
        @course_name = course_name 
        @@all << self 
    end 
    attr_reader :tutor, :student, :course_name 
    def self.all 
        @@all  
    end 

end
