require "./app//models/modules.rb"

class Student
    include ClassMethods #this module contains all class methods needed
    extend ClassMethods
    include Person #this module contains all instanve methods associated with student and tutor classes
    
    #get all courses associated with student
    def courses
        Course.all.select{|course| course.student == self}
    end

    #get all tutors associated with courses associated with student
    def tutors
        courses.map{|course| course.tutor}
    end

    #check if student is enrolled in at least 3 courses
    def enrolled_fulltime?
        courses.length >= 3 ? true : false
    end

end
