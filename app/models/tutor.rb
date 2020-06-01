class Tutor
  attr_accessor :name
  attr_reader :student
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

    def courses
    Course.all.select do |courses|
        courses.tutor == self
    end
    end

    def students
        courses.map {|course| course.student}
    end

    def tutored_student?(student)
        students.include?(student)
    end
end
