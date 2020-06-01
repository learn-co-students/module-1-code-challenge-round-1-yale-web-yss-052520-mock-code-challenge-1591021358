module Person

    #accessor for name variable
    attr_accessor :name

    #array to store all instances of class
    @@all = []

    #method to get all instances of class
    def self.all
        @@all
    end

    #initialize with a name and push to all array
    def initialize(name)
        @name = name
        @@all << self
    end
end