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
        Course.all.select do |course|
            course.tutor == self 
        end 
    end 

    def students 
        courses.map do |course|
            course.student
        end 
    end 

    def tutored_student?(input)
        if self.students == input 
            return true 
        else false 
        end 
    end 

end
