require "./app//models/modules.rb"

class Tutor
    include Person

    #get all courses associated with tutor
    def courses
        Course.all.select{|course| course.tutor == self}
    end

    #get all students associated with courses associated with tutor
    def students
        courses.map{|course| course.student}
    end

    #check if given student is tutored by current tutor instance
    def tutored_student?(student)
        students.find{|instance| instance == student} ? true : false
    end

end
