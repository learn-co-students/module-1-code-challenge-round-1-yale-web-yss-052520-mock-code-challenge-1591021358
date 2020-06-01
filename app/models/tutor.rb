class Tutor
    @@all = [] 
    def initialize(name)
        @name = name 
        @@all << self 
    end 
    attr_accessor :name 
    def self.all 
        @@all 
    end 

    def courses 
        Course.all.select {|one_course| one_course.tutor == self }
    end 

    def students 
        self.courses.map {|one_course| one_course.student}.uniq 
    end 

    def tutored_student?(student_input)
        if self.students.find {|one_student| one_student == student_input} 
            return true 
        else return false 
        end 
    end 
end
