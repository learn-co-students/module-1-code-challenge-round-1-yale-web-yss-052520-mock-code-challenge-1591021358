module Person
    #accessor for name variable
    attr_accessor :name
end

module ClassMethods
    #array to store all instances of class
    @@all = []

    #initialize with a name and push to all array
    def initialize(name)
        @name = name
        @@all << self
    end

    #method to get all instances of a class
    def all
        @@all
    end
end