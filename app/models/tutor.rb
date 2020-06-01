require_relative './modules.rb'

class Tutor
    # Factored out code into modules.rb for the initialize method
    include Initializer::InstanceMethods

    attr_accessor :name 
    @@all = []

    def self.all 
        @@all 
    end

    # Return an array of Course instances associated with the Tutor instance
    def courses 
        Course.all.select {|course| course.tutor == self}
    end 

    # Return an array of Student instances tutored by the Tutor instance
    def students 
        self.courses.map {|course| course.student}
    end 

    # Aggregate and Association Methods

    # Returns true if the Tutor has tutored the Student passed as argument. False otherwise.
    def tutored_student?(student)
        self.students.include?(student) # makes use of previously written instance method
    end 
end
