require_relative './modules.rb'

class Student

    # Code for initialize method was refactored into a module because it was identitcal to initialize method in tutor.rb
    include Initializer::InstanceMethods

    attr_accessor :name 
    @@all = []

    def self.all 
        @@all 
    end

    # Return an array of all Course instances for the Student 
    def courses 
        Course.all.select {|course| course.student == self }
    end 

    # Return an array of aall the Tutor instances that are tutoring the Student 
    # Tutor instances may not be unique if a student has the same Tutor for a different course
    def tutors 
        self.courses.map {|course| course.tutor}
    end 

    # Returns true if the Student has enrolled for at least 3 courses, false otherwise
    def enrolled_fulltime?
        self.courses.size >= 3 #utilizes previously written instance method
    end 
end
