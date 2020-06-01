class Course

    #accessor for all relevant variables

    #(this could also be just a reader as instructions don't say
    #we have to allow for changes in any of these variables, but
    #I'll leave it as an accessor just in case that would be
    #a necessary function)
    attr_accessor :tutor, :student, :course_name

    #array to store all instances of class
    @@all = []

    #method to get all instances of class
    def self.all
        @@all
    end

    #initialize with a tutor instance, a student instance, a name, and push to all array
    def initialize(tutor, student, course_name)
        @course_name = course_name
        @tutor = tutor
        @student = student
        @@all << self
    end

end
