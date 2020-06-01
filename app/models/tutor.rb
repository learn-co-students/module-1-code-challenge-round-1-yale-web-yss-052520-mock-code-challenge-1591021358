class Tutor

    attr_accessor :name

    @@all = []
  
    def initialize(name)
        @name = name
        self.class.all << self
    end

    def self.all
        @@all
    end

    def courses
        Course.all.select {|course_info| course_info.tutor == self}
    end

    def students 
       courses.map {|courses| courses.student}
    end

    def tutored_student?(student)
        #not sure where I'm messing up here..
            #taking all course instances and selecting the only the instances where the tutor is = to this tutor instance (self) and the student is equal to the input studnet instance
            #the boolean statment should be marking true if the course instance exists and false if it doesn't, but it keeps saying everything is true
            #maybe the problem isn't that it's not selecting, but that it will return an empty array if it doesn't exist so it's still true?? THIS IS IT
        # if Course.all.select {|courses| courses.tutor == self && courses.student == student}
        #     true
        # else
        #     false
        # end

        #I don't want to make a new array, I want to return nil if doesn't exist
            #solved by finding new method

        if Course.all.any? {|courses| courses.tutor == self && courses.student == student}
            true
        else
            false
        end

    end

end
