module Initializer

    module InstanceMethods
        def initialize(name)
            @name = name
            self.class.all << self 
        end 
    end 


end 