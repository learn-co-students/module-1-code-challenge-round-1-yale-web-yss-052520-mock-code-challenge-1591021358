class Student

    attr_accessor :name

    @@all = []

    def initialize(name_arg)
        @name = name_arg
        @@all << self
    end

    def self.all
        @@all
    end

end

# TESTS

# - `Student#initialize(name)`
#   - `Student` is initialized with a name (string)
#   - name **can be** changed after the `Student` is initialized

# - `Student#name`
#   - returns the `Student`'s name

# - `Student.all`
#   - returns an array of all the `Student` instances that have been initialized