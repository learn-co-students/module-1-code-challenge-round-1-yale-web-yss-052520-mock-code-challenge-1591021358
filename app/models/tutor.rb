class Tutor
    attr_accessor :name, :student, :course_name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def students
        Student.all.select {|student| student.tutor == self}
    end
    
    def tutors
        Tutor.all.select {|student| student.tutor == self}
    end


    def courses
        Course.all.select {|course| Course.tutor == self}
    end

    def tutored_student?(student)
        for course in courses do
            if course.student == student && course.tutor == self
                return true
            else
                return false
            end
        end    
    end    
end

# david = Tutor.new("David")
# emma = Tutor.new("Emma")